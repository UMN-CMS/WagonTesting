import sqlite3, json, os
from time import sleep
from config_loader import ConfigType, loadConfiguration
import engine_comm
import config_bits as cb
import subprocess
from collections import Counter
from pathlib import Path

DB_PATH = "file:/opt/lpgbt/lpgbt_calibration.db?mode=ro"

def majority_vote(values):
    result_voted = 0
    mismatches = {}
    for bit in range(32):
        bits = [x >> bit & 0b1 for x in values]
        bits_counter = Counter(bits)
        bit_voted, _ = bits_counter.most_common(1)[0]
        if len(bits_counter.most_common()) != 1:
            mismatches[bit] = {"chosen": bit_voted, "candidates": bits}
        result_voted |= bit_voted << bit
    return {"majority": result_voted, "contested": mismatches}

class calibrator():
    def __init__(self, board_sn=-1, tester=""):
        self.eng_conf = loadConfiguration(ConfigType.Engine)["general_configuration"]
        self.lpgbt_conf = loadConfiguration(ConfigType.LPGBT)
        self.iic = engine_comm.engine_comm(mode=self.eng_conf["COMM_MODE"], protocol=self.eng_conf["PROTOCOL"])
        self.iic.connect()
        self.lpgbts = self.eng_conf["LPGBTS"]
        self.chipids = {}

        #setup_calibration_database()
        con = sqlite3.connect(DB_PATH, uri=True)
        cur = con.cursor()
        self.chipsvals = {}
        self.TJ_USER = {}
        for lpgbt in self.lpgbts:
            chipid = self.read_chip_ID(lpgbt)
            self.chipids[lpgbt] = chipid
            chipdata = cur.execute(f"SELECT data from lpgbt WHERE CHIPID = '{self.chipids[lpgbt]:X}'").fetchone()
            if chipdata == None:
                print(f"No chipid found for {chipid:X}, using averaged parameters.")
                self.chipsvals[lpgbt] = json.loads(cur.execute(f"SELECT data from lpgbt WHERE CHIPID = '00000000'").fetchone()[0].decode('utf-8'))
            else:
                self.chipsvals[lpgbt] = json.loads(chipdata[0].decode('utf-8'))
        con.close()


    def read_chip_ID(self, lpgbt):
        def rr(v, shift):
            return (v >> shift) | ((v << (32 - shift)) & 0xFFFFFFFF)
        chip_id = 0x000
        chip_id_replica_1 = 0x008
        chip_id_replica_2 = 0x00C
        chip_id_replica_3 = 0x010
        chip_id_replica_4 = 0x014
        fuse_read = cb.Field(cb.FieldPart(0x119, 1, 1), name="fuse_read")
        fuse_address = cb.Field(
            cb.FieldPart(0x11E, 8, 0), cb.FieldPart(0x11F, 8, 0), name="fuse_address"
        )
        fuse_value = cb.Field(
            *[cb.FieldPart(0x1B2 + i, 8, 0) for i in range(3, -1, -1)], name="fuse_value"
        )
        rot_map = [0, 6, 12, 18, 24]
        all_ids = []
        cb.write(self.iic, {fuse_read: 1}, target=lpgbt)
        ready = False
        while not ready:
            ready = bool(cb.read(self.iic, [fuse_read], target=lpgbt)[fuse_read])
        for addr in (
            [
                chip_id,
                chip_id_replica_1,
                chip_id_replica_2,
                chip_id_replica_3,
                chip_id_replica_4,
            ]
        ):
            cb.write(self.iic, {fuse_address: addr}, target=lpgbt)
            read_id = cb.read(self.iic, [fuse_value], target=lpgbt)[fuse_value]
            #self.conn.send(f"Read {lpgbt} lpgbt id: {read_id:x}")
            all_ids.append(read_id)
        cb.write(self.iic, {fuse_read: 0}, target=lpgbt)
        all_ids = [rr(x, y) for x, y in zip(all_ids, rot_map)]
        #groups = [list(y) for _, y in it.groupby(all_ids)]
        #ranked = sorted(groups, key=len)
        majority = majority_vote(all_ids)
        contested = majority["contested"]
        chosen = majority["majority"]
        return chosen

    def ready_ADC(self, lpgbt):
        # VREF disable
        self.iic.write_lpgbt(0x01C, 0b00000000, lpgbt)
        # Reset temp sensor and enable VDD monitor
        self.iic.write_lpgbt(0x122, 0b00110000, lpgbt)
        sleep(0.01)
        self.iic.write_lpgbt(0x122, 0b00010000, lpgbt)
        # Select temp sensor for measurement
        self.iic.write_lpgbt(
            0x121, (14 << 4) | 15, lpgbt
        )
        # Enable ADC core and select gain x2
        self.iic.write_lpgbt(0x123, 0b00000100, lpgbt)
        sleep(0.01)

    def get_ADC_conversion(self, lpgbt):
        # Start conversion
        self.iic.write_lpgbt(0x123, 0b10000100, lpgbt)
        ADCStatusH = self.iic.read_lpgbt(0x1CA, target=lpgbt)[0]
        ADCBusy = (ADCStatusH & 0b10000000) != 0
        ADCDone = (ADCStatusH & 0b01000000) != 0
        # Wait until conversion done
        while (not ADCDone) and ADCBusy:
            sleep(0.01)
            ADCStatusH = self.iic.read_lpgbt(0x1CA, target=lpgbt)[0]
            ADCBusy = (ADCStatusH & 0b10000000) != 0
            ADCDone = (ADCStatusH & 0b01000000) != 0
        # Read conversion    
        ADCStatusL = self.iic.read_lpgbt(0x1CB, target=lpgbt)[0]
        conversion = (((ADCStatusH & 0b00000010) != 0) << 9 | (((ADCStatusH & 0b00000001) != 0) << 8) | ADCStatusL)
        self.iic.write_lpgbt(0x123, 0b00000100, lpgbt)
        sleep(0.01)
        return conversion

    def calibrate(self, numsamples=5):
        # Find VREFTUNE, TJ_USER for all chips and write VREFTUNE
        for lpgbt in self.lpgbts:
            self.ready_ADC(lpgbt)
            # Write default VREFTUNE value (0)
            self.iic.write_lpgbt(0x01D, 0, target=lpgbt)
            chipvals = self.chipsvals[lpgbt]
            # Average several ADC binary values
            adc_vals = []
            i = 0
            while i < numsamples:
                ADCval = self.get_ADC_conversion(lpgbt)
                adc_vals.append(ADCval)
                i += 1
            adc_avg = sum(adc_vals) / len(adc_vals)
            # Use calibration to convert to junction temperature
            self.TJ_USER[lpgbt] = adc_avg * chipvals['TEMPERATURE_UNCALVREF_SLOPE'] + chipvals['TEMPERATURE_UNCALVREF_OFFSET']
            # Use TJ to calculate calibrated VREFTUNE
            VREFTUNE = int(round(self.TJ_USER[lpgbt] * chipvals['VREF_SLOPE'] + chipvals['VREF_OFFSET']))
            self.iic.write_lpgbt(0x01D, VREFTUNE, lpgbt)
    
    #Various calibrated measurements/calculations
    def ADC_measurement(self, ADC_Val, gain, lpgbt):
        #ADC measurement value (Volts)
        chipvals = self.chipsvals[lpgbt]
#        print(chipvals)
        VADC_V = ADC_Val * (chipvals[f'ADC_X{gain}_SLOPE'] + self.TJ_USER[lpgbt] * chipvals[f'ADC_X{gain}_SLOPE_TEMP'])  + chipvals[f'ADC_X{gain}_OFFSET'] + self.TJ_USER[lpgbt] * chipvals[f'ADC_X{gain}_OFFSET_TEMP']
        return VADC_V

    def VMON_measurement(self, ADC_Val, gain, lpgbt):
            #Supply voltage monitors (Volts)
            chipvals = self.chipsvals[lpgbt]
            VADC_V  = self.ADC_measurement(ADC_Val, gain, lpgbt)  
            VMON_V = VADC_V * (chipvals['VDDMON_SLOPE'] + self.TJ_USER[lpgbt] * chipvals['VDDMON_SLOPE_TEMP'])
            return VMON_V
    
    def VDAC_value(self, VDAC_V, lpgbt):
        #Voltage DAC value (integer)
        chipvals = self.chipsvals[lpgbt]
        VDACValue = round(VDAC_V * (chipvals['VDAC_SLOPE'] + self.TJ_USER[lpgbt] * chipvals['VDAC_SLOPE_TEMP']) + chipvals['VDAC_OFFSET'] + self.TJ_USER[lpgbt] * chipvals['VDAC_OFFSET_TEMP'])
        return VDACValue
    
    def VDAC_bitstoV(self, VDACValue, lpgbt):
        chipvals = self.chipsvals[lpgbt]
        VDAC_V = (VDACValue - chipvals['VDAC_OFFSET'] - self.TJ_USER[lpgbt] * chipvals['VDAC_OFFSET_TEMP']) / (chipvals['VDAC_SLOPE'] + self.TJ_USER[lpgbt] * chipvals['VDAC_SLOPE_TEMP'])
        return VDAC_V
    
    def CURDAC_values(self, CURRENT_A, CDAC_num, lpgbt, RLOAD_OHM=False):
        ret = {}
        #Current DAC expected values (CURDACValue: integer, ROUT_OHM: load resistance ohms, I_LOAD_A: expected load resistor current amps)
        chipvals = self.chipsvals[lpgbt]
        CURDACValue = round((chipvals[f'CDAC{CDAC_num}_SLOPE'] + self.TJ_USER[lpgbt] * chipvals[f'CDAC{CDAC_num}_SLOPE_TEMP']) * CURRENT_A + chipvals[f'CDAC{CDAC_num}_OFFSET'] + self.TJ_USER[lpgbt] * chipvals[f'CDAC{CDAC_num}_OFFSET_TEMP'])
        ret['CURDACValue'] = CURDACValue
        ROUT_OHM = (chipvals[f'CDAC{CDAC_num}_R0'] + self.TJ_USER[lpgbt] * chipvals[f'CDAC{CDAC_num}_R0_TEMP']) / CURDACValue
        ret['ROUT_OHM'] = ROUT_OHM
        if RLOAD_OHM == False:
            I_LOAD_A = CURRENT_A * ROUT_OHM / (ROUT_OHM + RLOAD_OHM)
            ret['I_LOAD_A'] = I_LOAD_A
        return ret
    
    def CURDAC_bittoA(self, CURDACValue, CDAC_num, lpgbt):
        chipvals = self.chipsvals[lpgbt]
        CURRENT_A = (CURDACValue - chipvals[f'CDAC{CDAC_num}_OFFSET'] - self.TJ_USER[lpgbt] * chipvals[f'CDAC{CDAC_num}_OFFSET_TEMP']) / (chipvals[f'CDAC{CDAC_num}_SLOPE'] + self.TJ_USER[lpgbt] * chipvals[f'CDAC{CDAC_num}_SLOPE_TEMP'])
        return CURRENT_A

    def RSENSE_OHM(self, ADC_Val, gain, ROUT_OHM, CURRENT_A, lpgbt):
        #Use CURDAC to measure external resistance, ROUT_OHM: load resistance in ohms (from CURDAC_Values), CURRENT_A: CURDAC output current)
        VADC_V  = self.ADC_measurement(ADC_Val, gain, lpgbt) 
        RSENSE_OHM = VADC_V * ROUT_OHM / (CURRENT_A * ROUT_OHM - VADC_V)
        return RSENSE_OHM

    def test_calibration(self):
        passed_all = True
        results = {}
        for lpgbt in self.lpgbts:
            # Select VDD, then perform a measurement (expected ~1.26V)
            self.iic.write_lpgbt(0x121, (12 << 4) | 15, lpgbt)  
            ADC_Val = self.get_ADC_conversion(lpgbt)          
            VDD_V = self.VMON_measurement(ADC_Val, '2', lpgbt)
            results[lpgbt] = {}
            results[lpgbt]["VDD_V"] = VDD_V
            passed = (round(VDD_V, 2) >= (1.26 - 2*0.016)) and (round(VDD_V, 2) <= (1.26 + 2*0.016))
            if not passed:
                passed_all = False
        return passed_all, results

def setup_calibration_database():
    import pandas as pd
    from pathlib import Path
    filename = str(DB_PATH)
    if not Path(filename).is_file():
        url = 'https://lpgbt.web.cern.ch/lpgbt/calibration/lpgbt_calibration_v2.zip'
        subprocess.run(['wget',url], cwd=Path.home())
        subprocess.run(['unzip', 'lpgbt_calibration_v2.zip'], cwd=Path.home())
        subprocess.run(['rm' ,'lpgbt_calibration_v2.zip'], cwd=Path.home())
        calframe = pd.read_csv(CSV_PATH, skiprows=[0,1,2]).set_index("CHIPID")
        caldict = calframe.to_dict("index")
        callist = [
            (chipid, json.dumps(data).encode('utf-8'))
            for chipid, data in caldict.items()]
        con = sqlite3.connect(DB_PATH)
        cur = con.cursor()
        cur.execute("CREATE TABLE lpgbt(CHIPID, data)")
        cur.executemany("INSERT INTO lpgbt VALUES(?, ?)", callist)
        defaultdata = calframe.mean().to_dict()
        defaults = ('00000000', json.dumps(defaultdata).encode('utf-8'))
        cur.execute("INSERT INTO lpgbt VALUES(?, ?)", defaults)
        con.commit()
        con.close()
        subprocess.run(['rm' ,CSV_PATH], cwd=Path.home())

if __name__ == "__main__":
    setup_calibration_database()
    calibrator = calibrator()
    calibrator.calibrate()
    board_results = calibrator.test_calibration()
    print(board_results)
    print(calibrator.TJ_USER)
