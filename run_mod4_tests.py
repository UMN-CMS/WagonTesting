#!/usr/bin/python

from Test import Test
from iic import iic
import config_bits as cb
import engine_comm
from adc_calibrator import setup_calibration_database,majority_vote,calibrator
import sqlite3
from pathlib import Path
import os
import subprocess
import sys
import math
import time
import traceback
parent_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
sys.path.append(parent_dir)


DB_PATH = "file:/opt/lpgbt/lpgbt_calibration.db?mode=ro"

class Mod4LMezzComm(Test):

    def __init__(self, conn, board_sn=-1, tester=''):
        self.info_dict = {'name': "Mod4 LMezz Comm", 'board_sn': board_sn, 'tester': tester}
        self.conn = conn
        Test.__init__(self, self.lmezz_comm_test, self.info_dict, conn)

    def lmezz_comm_test(self, **kwargs):
        data={'mezz_ok': True}
        comments=''
        passed=True

        # "Pin 13" on Kria GPIO is the reset
        subprocess.run(['gpioset','2','13=1'])
        time.sleep(1)

        try:
            self.iic = engine_comm.engine_comm("I2C", "MEZZ")
            self.iic.connect(dev="/dev/i2c-5")
            self.iic.write_lpgbt(0x01c,0,"LPGBT")
        except Exception as e:
            data['mezz_ok'] = False
            comments=f"Failed to write to LPGBT."
            passed=False
        finally:
            if hasattr(self, 'iic'):
                self.iic.close()
            if self.conn is not None:
                self.conn.send("Done.")
        #print(passed)
        #print(data)
        #print(comments)

        return passed, data, comments


class Mod4LMezzId(Test):

    def __init__(self, conn, board_sn=-1, tester=''):
        self.info_dict = {'name': "Mod4 LMezz Id", 'board_sn': board_sn, 'tester': tester}
        self.conn = conn

        self.fuse_read = cb.Field(cb.FieldPart(0x119, 1, 1), name="fuse_read")
        self.fuse_data_valid = cb.Field(cb.FieldPart(0x1B1, 1, 2), name="fuse_data_valid")
        self.fuse_address = cb.Field(
            cb.FieldPart(0x11E, 8, 0), cb.FieldPart(0x11F, 8, 0), name="fuse_address"
        )
        self.fuse_value = cb.Field(
            *[cb.FieldPart(0x1B2 + i, 8, 0) for i in range(3, -1, -1)], name="fuse_value"
        )

        self.chip_id = 0x000
        self.chip_id_replica_1 = 0x008
        self.chip_id_replica_2 = 0x00C
        self.chip_id_replica_3 = 0x010
        self.chip_id_replica_4 = 0x014

        self.setup_done = True
        try:
            self.iic = engine_comm.engine_comm("I2C", "MEZZ")
            self.iic.connect("/dev/i2c-5")
            self.iic.write_lpgbt(0x140,0xA3,"LPGBT")
            self.iic.write_lpgbt(0x13f,0b10010011,"LPGBT")

            self.iic.write_lpgbt(0x053, 0xff, "LPGBT")
            self.iic.write_lpgbt(0x054, 0xff, "LPGBT")
            self.iic.write_lpgbt(0x055, 0, "LPGBT")
            self.iic.write_lpgbt(0x056, 0, "LPGBT")
        except Exception as e:
            print(f"Setup failed: {e}")
            self.setup_done=False

        Test.__init__(self, self.lmezz_id_test, self.info_dict, conn)

    def lmezz_id_test(self, **kwargs):
        def rr(v, shift):
            return (v >> shift) | ((v << (32 - shift)) & 0xFFFFFFFF)
        if not self.setup_done:
            print("Setup failed, skipping test.")
            return False, {}, "Failed to connect to I2C interface."
        try:
            results = {}
            passed = True
            rot_map = [0, 6, 12, 18, 24]
            comments = []
            all_ids = []
            cb.write(self.iic, {self.fuse_read: 1}, target="LPGBT")
            ready = False
            while not ready:
                ready = bool(cb.read(self.iic, [self.fuse_read], target="LPGBT")[self.fuse_read])
            for addr in [
                self.chip_id,
                self.chip_id_replica_1,
                self.chip_id_replica_2,
                self.chip_id_replica_3,
                self.chip_id_replica_4,
            ]:
                cb.write(self.iic, {self.fuse_address: addr}, target="LPGBT")
                read_id = cb.read(self.iic, [self.fuse_value], target="LPGBT")[self.fuse_value]
                all_ids.append(read_id)
            cb.write(self.iic, {self.fuse_read: 0}, target="LPGBT")
            all_ids = [rr(x, y) for x, y in zip(all_ids, rot_map)]

            for i in all_ids:
                print(f"{i:08x}")

            majority = majority_vote(all_ids)
            contested = majority["contested"]
            chosen = majority["majority"]
            results["LPGBT"] = {"id": chosen, "candidates": all_ids}

            #setup_calibration_database()
            con = sqlite3.connect(DB_PATH,uri=True)
            cur = con.cursor()
            chipdata = cur.execute(
                f"SELECT data from lpgbt WHERE CHIPID = '{chosen:08X}'"
            ).fetchone()
            con.close()
            if chipdata is None:
                comments.append(
                    f"Could not find lpgbt id 0x{chosen:08x} in the database"
                )
                passed = False
            #print(f"Passed: {passed}")
            if self.conn is not None:
                self.conn.send("Done.")
            print(f"Contested: {contested}, Chosen: {chosen:08x}")
            return passed, results, "\n".join(comments)
        except Exception as e:
            print(f"Exception during ID readout: {e}")
            return False, {}, f"Error during ID readout."

class Mod4Resistance(Test):
    def __init__(self, conn, board_sn=-1, tester=''):
        self.info_dict = {'name': "Mod4 Resistance", 'board_sn': board_sn, 'tester': tester}
        self.conn = conn
        Test.__init__(self, self.mod4_res_test, self.info_dict, conn)
    
    pairs = {
        5: 10,
        11: 15,
        10: 5,
        15: 11
    }

    def set_all_inputs(self):
        self.iic.write_lpgbt(0x053, 0, "LPGBT")
        self.iic.write_lpgbt(0x054, 0, "LPGBT")
    
    def clear_writes(self):
        self.iic.write_lpgbt(0x055, 0, "LPGBT")
        self.iic.write_lpgbt(0x056, 0, "LPGBT")

    def set_output(self, pin=16):
        if pin < 8:
            self.iic.write_lpgbt(0x054, (1 << pin), "LPGBT")
        else:
            self.iic.write_lpgbt(0x053, (1 << (pin-8)), "LPGBT")

    def drive_high(self, pin):
        if pin < 8:
            self.iic.write_lpgbt(0x056, (1 << pin), "LPGBT")
        else:
            self.iic.write_lpgbt(0x055, (1 << (pin-8)), "LPGBT")

    def pulldown_configure(self):
        self.iic.write_lpgbt(0x057, 0xff , "LPGBT")
        self.iic.write_lpgbt(0x058, 0xff , "LPGBT")
        self.iic.write_lpgbt(0x059, 0 , "LPGBT")
        self.iic.write_lpgbt(0x05a, 0, "LPGBT")

    def read_gpio(self, pin):
        if pin<8:
            reg=0x1b0
            bit=pin
        else:
            reg=0x1af
            bit=pin-8
        val=self.iic.read_lpgbt(reg,target= "LPGBT")[0]
        return (val>>bit)&1

    def mod4_res_test(self, **kwargs):
        passed = True
        test_data = {}
        comments = ""

        
        try:
            self.iic = engine_comm.engine_comm("I2C", "MEZZ")
            self.iic.connect("/dev/i2c-5")

            adc=calibrator(iic=self.iic,chips=["LPGBT"])

            gpio_pins={3,5,8,10,11,13,15}
            names={3:"PG_LDO",8:"PWR_EN",5:"PG_DCDC",10:"ECON_RE_Hb",11:"ECON_RE_Sb",15:"HGCROC_RE_Sb",13:"HGCROC_RE_Hb",'ADC3':'VMON_REF', 'ADC6':'VMON_LVS','ADC7':'RTD'}


            self.clear_writes()
            self.pulldown_configure()
            self.set_all_inputs()
            # "Pin 12" on Kria GPIO is the pwr_enable
            subprocess.run(['gpioset','2','12=1'])

            test_data['X_PWR_EN']={}
            for pin in gpio_pins:
                val=self.read_gpio(pin)
                test_data['X_PWR_EN'][names[pin]]=val
                should_be_high=(pin==3 or pin==8)
                if val and not should_be_high:
                    passed=False
                    comments+=f"GPIO{pin} stuck high when X_PWR_EN is set high.\n"
                elif not val and should_be_high:
                    passed=False
                    comments+=f"GPIO{pin} stuck low when X_PWR_EN is set high.\n"
            
            # Set X_PWR_EN low
            subprocess.run(['gpioset','2','12=0'])

            for pina in gpio_pins:
                if pina in (3,8,13):
                    continue
                test_data[names[pina]]={}
                self.clear_writes()
                self.set_all_inputs()
                self.set_output(pina)
                self.drive_high(pina)
                for pin in gpio_pins:
                    val=self.read_gpio(pin)
                    test_data[names[pina]][names[pin]] = val
                    should_be_high=(pin==pina or pin==self.pairs.get(pina,-1))
                    if val and not should_be_high:
                        passed=False
                        comments+=f"GPIO{pin} stuck high when GPIO{pina} is set high.\n"
                    elif not val and should_be_high:
                        passed=False
                        comments+=f"GPIO{pin} stuck low when GPIO{pina} is set high.\n"



            subprocess.run(['gpioset','2','12=1']) # put it back in default

            # loop over ADC-based checks
            print("Calibrating")
            adc.calibrate()
#            cres={3:20,6:100,7:100} nominal
            cres={3:23,6:91,7:91}
            tollerance=5

            self.iic.write_lpgbt(0x06a,0x40,"LPGBT") # enable the CURDAC
                        
            for (chan,res) in cres.items():
                currents=(700e-6, 500e-6, 300e-6)
                ave_res=0
                for current_target in currents:
                    cdv=adc.CURDAC_values(current_target,chan,"LPGBT",res)
                    self.iic.write_lpgbt(0x6d,(1<<chan),"LPGBT") # channel enable
                    self.iic.write_lpgbt(0x6c,cdv['CURDACValue'],"LPGBT")
                    self.iic.write_lpgbt(0x121,(chan<<4)|0xF,"LPGBT") # read from the right channel
                    adc_bits=adc.get_ADC_conversion("LPGBT")
                    # adcv=adc.ADC_measurement(adc_bits,2,"LPGBT")
                    ave_res+=adc.RSENSE_OHM(adc_bits,2,cdv['ROUT_OHM'],cdv['I_LOAD_A'],"LPGBT")
                ave_res/=len(currents)
                if math.fabs(ave_res-res)>tollerance: # failure case
                    passed=False
                    comments+="%s out of range;"%(names['ADC%d'%chan])
                test_data[names['ADC%d'%chan]]=ave_res
            self.iic.write_lpgbt(0x6d,0,"LPGBT") # channel enable off
            self.iic.write_lpgbt(0x06a,0,"LPGBT") # disable the CURDAC

            test_data['test_criteria']={
                names['ADC3']+'_range':[cres[3]-tollerance, cres[3]+tollerance],
                names['ADC6']+'_range':[cres[6]-tollerance, cres[6]+tollerance],
                names['ADC7']+'_range':[cres[7]-tollerance, cres[7]+tollerance],
            }
            
        except Exception:
            traceback.print_exc()
            comments=f"Failed to write to LPGBT."
            passed=False
        finally:
            if hasattr(self, 'iic'):
                self.iic.close()
            if self.conn is not None:
                self.conn.send("Done.")

        return passed, test_data, comments

class Mod4Reset(Test):
    def __init__(self, conn, board_sn=-1, tester=''):
        self.info_dict = {'name': "Mod4 Reset", 'board_sn': board_sn, 'tester': tester}
        self.conn = conn
        Test.__init__(self, self.mod4_reset_test, self.info_dict, conn)

    def mod4_reset_test(self, **kwargs):
        passed = True
        test_data = {}
        comments = ""
        try:
            self.iic = engine_comm.engine_comm("I2C", "MEZZ")
            self.iic.connect("/dev/i2c-5")
            before_write=self.iic.read_lpgbt(0x004,target="LPGBT")[0]
            test_data['before_write']=before_write
            self.iic.write_lpgbt(0x004,0xff,"LPGBT") # adc read set as test to vref, vref
            time.sleep(0.1)
            after_write=self.iic.read_lpgbt(0x004,target="LPGBT")[0]
            test_data['after_write']=after_write
            if after_write!=0xff:
                passed=False
                comments+="Write to register failed, cannot verify reset functionality."
            subprocess.run(['gpioset','2','13=0'])
            time.sleep(2)
            subprocess.run(['gpioset','2','13=1'])
            time.sleep(2)
            adc_bits=self.iic.read_lpgbt(0x004,target="LPGBT")[0]
            if adc_bits!=before_write:
                passed=False
                comments+="Reset line did not reset the register value."
            test_data['after_reset']=adc_bits
        except Exception as e:
            traceback.print_exc()
            passed=False
            comments=f"Unexpected error during reset test."
        finally:
            if hasattr(self, 'iic'):
                self.iic.close()
        if self.conn is not None:
            self.conn.send("Done.")
        return passed, test_data, comments
