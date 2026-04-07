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
            self.setup_done=False

        Test.__init__(self, self.lmezz_id_test, self.info_dict, conn)

    def lmezz_id_test(self, **kwargs):
        def rr(v, shift):
            return (v >> shift) | ((v << (32 - shift)) & 0xFFFFFFFF)
        if not self.setup_done:
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
            return passed, results, "\n".join(comments)
        except Exception as e:
            return False, {}, f"Error during ID readout."

class Mod4Resistance(Test):
    def __init__(self, conn, board_sn=-1, tester=''):
        self.info_dict = {'name': "Mod4 Resistance", 'board_sn': board_sn, 'tester': tester}
        self.conn = conn
        Test.__init__(self, self.mod4_res_test, self.info_dict, conn)

    def read_gpio_all(self):
        x=self.iic.read_lpgbt(0x1af,2,"LPGBT")
        return (x[0]<<8)|x[1]

    def mod4_res_test(self, **kwargs):
        passed = True
        test_data = {}
        comments = ""

        
        try:
            self.iic = engine_comm.engine_comm("I2C", "MEZZ")
            self.iic.connect("/dev/i2c-5")

            adc=calibrator(iic=self.iic,chips=["LPGBT"])
            
            # enable input on GPIO3,5,8,13,15, output on GPIO10 and 11
            self.iic.write_lpgbt(0x053,0b00001100,"LPGBT") # output on 10 and 11
            self.iic.write_lpgbt(0x054,0,"LPGBT") # no outputs on 0-7
            # enable pull-up on GPIO3,5,8,13,15
            self.iic.write_lpgbt(0x059,0b10100001,"LPGBT") # pullup on 15, 13, 8
            self.iic.write_lpgbt(0x05a,0b00101000,"LPGBT") # pullup on 5, 3
            self.iic.write_lpgbt(0x057,0b10100001,"LPGBT") # pull enable on 15, 13, 8
            self.iic.write_lpgbt(0x058,0b00101000,"LPGBT") # pull enable on 5, 3

            # set pins high
            self.iic.write_lpgbt(0x055,0b00001100,"LPGBT") #
            subprocess.run(['gpioset','2','12=1'])
            names={3:"PG_LDO/PWR_EN",8:"PWR_EN",5:"PG_DCDC/ECON_RE_Hb",10:"ECON_RE_Hb",11:"ECON_RE_Sb",15:"HGCROC_RE_Sb/ECON_RE_Sb",13:"HGCROC_RE_Hb",'ADC3':'VMON_REF', 'ADC6':'VMON_LVS','ADC7':'RTD'}

            # check pins are high
            x=self.read_gpio_all()
            should_be_high=(3,5,8,10,11,15)
            for pin in should_be_high:
                if (x & (1<<pin))==0:
                    passed=False
                    test_data["GPIO%d"%pin]="Stuck low"
                    comments+="%s stuck low;"%(names[pin])
            test_data["GPIO_HIGH"]=f"{x:016b}"

            # set pins low
            self.iic.write_lpgbt(0x055,0b00000000,"LPGBT") #
            # "Pin 12" on Kria GPIO is the pwr_enable
            subprocess.run(['gpioset','2','12=0'])
            
            # check pins are low
            should_be_low=(3,5,8,10,11,13,15)
            x=self.read_gpio_all()
            for pin in should_be_low:
                if (x & (1<<pin))!=0:
                    passed=False
                    test_data["GPIO%d"%pin]="Stuck high"
                    comments+="%s stuck high;"%(names[pin])
            test_data["GPIO_LOW"]=f"{x:016b}"

            subprocess.run(['gpioset','2','12=1']) # put it back in default

            # loop over ADC-based checks
            print("Calibrating")
            adc.calibrate()
#            cres={3:20,6:100,7:100} nominal
            cres={3:23,6:91,7:91}

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
                    adcv=adc.ADC_measurement(adc_bits,2,"LPGBT")
                    ave_res+=adc.RSENSE_OHM(adc_bits,2,cdv['ROUT_OHM'],cdv['I_LOAD_A'],"LPGBT")
                ave_res/=len(currents)
                if math.fabs(ave_res-res)>5: # failure case
                    passed=False
                    comments+="%s out of range;"%(names['ADC%d'%chan])
                test_data[names['ADC%d'%chan]]=ave_res
            self.iic.write_lpgbt(0x6d,0,"LPGBT") # channel enable off
            self.iic.write_lpgbt(0x06a,0,"LPGBT") # disable the CURDAC
            
        except Exception as e:
            print(e)
            test_data['mezz_ok'] = False
            comments=f"Failed to write to LPGBT: "+str(e)
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
        if self.conn is not None:
            self.conn.send("Done.")
        return passed, test_data, comments
