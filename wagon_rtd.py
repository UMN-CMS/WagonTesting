#!/usr/bin/python                                                               
from HwInterface.ADS124 import ADS124
from Test import Test 

import argparse
from datetime import datetime
import time
import json


def parse_ID(ID): #likely will come from an imported utility class, right now just return a basic configuration
    num_modules = 1
    east = False
    return num_modules, east

def check_value(value, target, tolerance):
    passed = (target - tolerance < value < target + tolerance)
    if passed:
        message = "passed"
    else:
        message = "FAILED"
    return passed, message


class module_ADS124:

    # wire connections to analog input number (12 is common)                                                                                         
    RTD = 1
    VMON_LVS = 2
    PWR_EN = 3
    PG_LDO = 4
    PG_DCDC = 5
    ECON_RE_Hb = 8  
    ECON_RE_Sb = 11
    HGCROC_RE_Sb = 12
    HGCROC_RE_Hb = 7
    IDAC1 = 0   
    IDAC2 = 6

    def __init__(self, conn, module=None, targets=None):
        self.conn = conn
        self.chip = ADS124(bus=3, device=module)
        self.chip.powerdown()
        self.chip.wakeup()
        self.chip.reset()
        self.module = module + 1
        self.targets = [[0.1,100],[0.1,100],[0.1,100],[0.1,100],[495,505]] #placeholder
        self.chip.reset_POR_flag()
        print(f"Status Register: {self.chip.read_reg(0x01)}")
        self.chip.read_all()

        self.data={}

    def get_resistances(self):
        try:
            self.conn.send("testing chip for module " + str(self.module))
            all_passed = True
            self.chip.ref_config(1) # internal reference on (needed for IDAC)  
            self.chip.set_conv_delay(7)

            self.chip.ref_input(0) # set reference source to REFP0, REFN0
            self.chip.set_gain(1, enable=False)   
            self.chip.set_idac_current(500) # IDAC current set to 500 micro amps
            #print(self.chip.get_idac_current())
            self.chip.set_idac_channel(self.IDAC1, 13)  
            self.chip.setup_mux(self.RTD, self.HGCROC_RE_Sb) # measuring full resistance across all wires
            line = 'RTD -> HGCROC_RE_Sb'                                       
            resistance = self.chip.read_volts(vref=2000,ave=4)
            print(resistance)
            print(self.chip.read_data())
            self.data[line] = resistance[0]
            self.conn.send("line %s resistance is %.2f ohms" % (line, resistance[0]))
            print("line %s resistance is %.2f ohms (27.4 + wire)" % (line, resistance[0]))

            self.chip.setup_mux(self.RTD, self.VMON_LVS) # measuring resistance between lines RTD and VMON_LVS  line = 'RTD -> VMON_LVS'                                  
            line = 'RTD -> VMON_LVS'                                  
            resistance = self.chip.read_volts(vref=2000,ave=4)
            passed, message = check_value(resistance[0], self.targets[0][0], self.targets[0][1])
            if not passed:
                all_passed = False
            self.data[line] = resistance[0]
            self.conn.send(("line %s resistance is %.2f ohms; %s" % (line, resistance[0], message)))
            print(("line %s resistance is %.2f ohms (1 + wire); %s" % (line, resistance[0], message)))

            self.chip.setup_mux(self.RTD, self.PWR_EN) # measuring resistance between lines RTD and PWR_EN
            line = 'RTD -> PWR_EN'                                       
            resistance = self.chip.read_volts(vref=2000,ave=4)
            print(resistance)
            print(self.chip.read_data())
            self.data[line] = resistance[0]
            self.conn.send("line %s resistance is %.2f ohms" % (line, resistance[0]))
            print("line %s resistance is %.2f ohms (27.4 + wire)" % (line, resistance[0]))

            self.chip.setup_mux(self.RTD, self.PG_LDO) # measuring resistance between lines RTD and PG_LDO
            line = 'RTD -> PG_LDO'                                       
            resistance = self.chip.read_volts(vref=2000,ave=4)
            print(resistance)
            print(self.chip.read_data())
            self.data[line] = resistance[0]
            self.conn.send("line %s resistance is %.2f ohms" % (line, resistance[0]))
            print("line %s resistance is %.2f ohms (27.4 + wire)" % (line, resistance[0]))

            self.chip.setup_mux(self.RTD, self.PG_DCDC) # measuring resistance between lines RTD and PG_DCDC
            line = 'RTD -> PG_DCDC'                                       
            resistance = self.chip.read_volts(vref=2000,ave=4)
            print(resistance)
            print(self.chip.read_data())
            self.data[line] = resistance[0]
            self.conn.send("line %s resistance is %.2f ohms" % (line, resistance[0]))
            print("line %s resistance is %.2f ohms (27.4 + wire)" % (line, resistance[0]))

            self.chip.setup_mux(self.RTD, self.ECON_RE_Hb) # measuring resistance between lines RTD and ECON_RE_Hb
            line = 'RTD -> ECON_RE_Hb'                                       
            resistance = self.chip.read_volts(vref=2000,ave=4)
            print(resistance)
            print(self.chip.read_data())
            self.data[line] = resistance[0]
            self.conn.send("line %s resistance is %.2f ohms" % (line, resistance[0]))
            print("line %s resistance is %.2f ohms (27.4 + wire)" % (line, resistance[0]))

            self.chip.setup_mux(self.RTD, self.ECON_RE_Sb) # measuring resistance between lines RTD and ECON_RE_Sb
            line = 'RTD -> ECON_RE_Sb'                                       
            resistance = self.chip.read_volts(vref=2000,ave=4)
            print(resistance)
            print(self.chip.read_data())
            self.data[line] = resistance[0]
            self.conn.send("line %s resistance is %.2f ohms" % (line, resistance[0]))
            print("line %s resistance is %.2f ohms (27.4 + wire)" % (line, resistance[0]))

            self.chip.setup_mux(self.PWR_EN, self.PG_LDO) # measuring resistance between lines PWR_EN and PG_LDO      
            line = 'PWR_EN -> PG_LDO'                   
            resistance = self.chip.read_volts(vref=2000,ave=4)
            passed, message = check_value(resistance[0], self.targets[1][0], self.targets[1][1])
            if not passed:
                all_passed = False
            self.data[line] = (resistance[0], message)
            self.conn.send("line %s resistance is %.2f ohms; %s" % (line, resistance[0], message))
            print("line %s resistance is %.2f ohms (1 + wire); %s" % (line, resistance[0], message))

            self.chip.setup_mux(self.PG_DCDC, self.ECON_RE_Hb) # measuring resistance between lines PG_DCDC and ECON_RE_Hb
            line = 'PG_DCDC -> ECON_RE_Hb'                           
            resistance = self.chip.read_volts(vref=2000,ave=4)
            passed, message = check_value(resistance[0], self.targets[2][0], self.targets[2][1])
            if not passed:
                all_passed = False
            self.data[line] = (resistance[0], message)
            self.conn.send("line %s resistance is %.2f ohms; %s" % (line, resistance[0], message))
            print("line %s resistance is %.2f ohms (1 + wire); %s" % (line, resistance[0], message))

            self.chip.setup_mux(self.ECON_RE_Sb, self.HGCROC_RE_Sb) # measuring resistance between lines ECON_RE_Sb and HGCROC_RE_Sb   
            line = 'ECON_RE_Sb -> HGCROC_RE_Sb'            
            resistance = self.chip.read_volts(vref=2000,ave=4)
            passed, message = check_value(resistance[0], self.targets[3][0], self.targets[3][1])
            if not passed:
                all_passed = False
            self.data[line] = (resistance[0], message)
            self.conn.send("line %s resistance is %.2f ohms; %s" % (line, resistance[0], message))
            print("line %s resistance is %.2f ohms (18 + wire); %s" % (line, resistance[0], message))

            self.chip.set_idac_channel(self.IDAC2,13)
            self.chip.setup_mux(self.HGCROC_RE_Hb, self.HGCROC_RE_Sb)
            self.chip.ref_input(2) # use internal 2.5V reference
            self.chip.ref_config(1)
            self.chip.set_gain(1,enable=True)
            self.chip.set_idac_current(500)

            line = 'HGCROC_RE_Hb -> HGCROC_RE_Sb'
            volts = self.chip.read_volts(vref=2.5, ave=4)   

            resistance = [ volts[0] / ((10**-6)*self.chip.get_idac_current()), volts[1] / ((10**-6) * self.chip.get_idac_current()) ]  
            passed, message = check_value(resistance[0], self.targets[4][0], self.targets[4][1])
            if not passed:
                all_passed = False
            self.data[line] = (resistance[0], message) 
            self.conn.send("line %s resistance is %.2f ohms; %s" % (line, resistance[0], message))
            print("line %s resistance is %.2f ohms; %s" % (line, resistance[0], message))

            print("Did all pass? : {}".format(all_passed))

            self.chip.powerdown()

            return all_passed

        except Exception as e:
            print(e)
            #self.conn.send(e)
            self.conn.send("Issues running general resistance measurement, check board connections")
            self.data={"Error": 1}
            self.chip.powerdown()
            return False

class id_ADS124:

    # wire connections to analog input number (12 is common)                                                                                         
    X_PWR_EN = 1
    X_RESETb = 2
    VMON_REF0 = 4
    VMON_REF1 = 8
    VMON_REF2 = 10
    PROBE_DC = 12
    WAGON_TYPE = 6
    GND = 7
    IDAC1 = 3
    IDAC2 = 5
    IDAC3 = 9
    IDAC4 = 0
    IDAC5 = 11

    def __init__(self, conn, targets=None):
        
        # Initalizing the PIPE as an attribute
        self.conn = conn

        self.chip = ADS124(bus=3, device=3)
        self.chip.wakeup()
        self.chip.reset()
        self.targets = [[495,505]] #placeholder
        self.chip.reset_POR_flag()
        self.data = {}

    def get_resistances(self, num_modules=1, east=False):
        try:
            print("testing ID chip")
            all_passed = True
            self.chip.ref_config(1) # internal reference on (needed for IDAC)
            self.chip.set_conv_delay(7)

            self.chip.ref_input(0) # set reference source to REFP0, REFN0 
            self.chip.set_gain(1,enable=False)
            self.chip.set_idac_current(500)
            print(self.chip.get_idac_current())

            #self.chip.set_idac_channel(self.IDAC1,13)
            #self.chip.setup_mux(self.VMON_REF0,self.PROBE_DC)
            #line = 'VMON_REF0 -> PROBE_DC'
            #resistance = self.chip.read_volts(vref=2000,ave=4)
            #passed, message = check_value(resistance[0], self.targets[0][0], self.targets[0][1])
            #passed = True

            #if not passed:
            #    all_passed = False
            #self.data[line] = (resistance[0], message)
            #print("line %s resistance is %.2f ohms (5.5 + wire); %s" % (line, resistance[0], message))
            #
            #if num_modules >= 2:
            #    self.chip.set_idac_channel(self.IDAC2,13)
            #    self.chip.setup_mux(self.VMON_REF1,self.PROBE_DC)
            #    line = 'VMON_REF1 -> PROBE_DC'
            #    resistance = self.chip.read_volts(vref=2000,ave=4)
            #    passed, message = check_value(resistance[0], self.targets[1][0], self.targets[1][1])
            #    if not passed:
            #        all_passed = False
            #    self.data[line] = (resistance[0], message)
            #    print("line %s resistance is %.2f ohms; %s" % (line, resistance[0], message))
            #
            #if num_modules == 3:
            #    self.chip.set_idac_channel(self.IDAC3,13)
            #    self.chip.setup_mux(self.VMON_REF2,self.PROBE_DC)
            #    line = 'VMON_REF2 -> PROBE_DC'
            #    resistance = self.chip.read_volts(vref=2000,ave=4)
            #    passed, message = check_value(resistance[0], self.targets[2][0], self.targets[2][1])
            #    if not passed:
            #        all_passed = False
            #    self.data[line] = (resistance[0], message)
            #    print("line %s resistance is %.2f ohms; %s" % (line, resistance[0], message))
            #
            #if east:
            #    self.chip.set_idac_channel(self.IDAC4,13)
            #    self.chip.setup_mux(self.X_PWR_EN,self.X_RESETb)
            #    line = 'X_PWR_EN -> X_RESETb'
            #    resistance = self.chip.read_volts(vref=2000,ave=4)
            #    passed, message = check_value(resistance[0], self.targets[3][0], self.targets[3][1])
            #    if not passed:
            #        all_passed = False
            #    self.data[line] = (resistance[0], message)
            #    print("line %s resistance is %.2f ohms; %s" % (line, resistance[0], message))

            self.chip.ref_input(2) # use internal 2.5V reference                                                                                     
            self.chip.set_gain(1,enable=False)
            self.chip.set_idac_channel(self.IDAC5,13)
            self.chip.set_idac_current(500)
            self.chip.setup_mux(self.WAGON_TYPE,self.GND)
            line = 'WAGON_TYPE -> GND'
            print(line)
            voltage = self.chip.read_volts(vref=2.5, ave=4)
            try:
                resistance = [ voltage[0] / ((10**-6) * self.chip.get_idac_current()), voltage[1] / ((10**-6) * self.chip.get_idac_current()) ]
            except:
                resistance = [0]
            self.data[line] = resistance[0]
            self.conn.send("line %s resistance is %.2f ohms" % (line, resistance[0]))
            passed, message = check_value(resistance[0], self.targets[0][0], self.targets[0][1])
            print("line %s resistance is %.2f ohms (1200 + wire)" % (line, resistance[0]))
            if passed:
                all_passed = True

            self.chip.powerdown()

            return all_passed
        except Exception as e:
            print(e)
            self.conn.send(e)
            self.conn.send("Issue running ID resistance test, check board connections")
            self.data = {"Error": 1}
            self.chip.powerdown()
            return False


class gen_resist_test(Test):

    def __init__(self, conn, board_sn=-1, tester="", module = None):
        self.info_dict = {'name': "General Resistance Test", 'board_sn': board_sn, 'tester': tester}

        Test.__init__(self, self.rtd_test, self.info_dict, conn, east=False, module = module)

    def rtd_test(self, **kwargs):

        # Forced to automatically pass the test
        passed = True
        num_modules = self.get_num_modules()
        east = kwargs['east']
        module = kwargs['module']
        data = {}

        self.module_chips = [None] * num_modules

        if module is not None:
            self.module_chips[0] = module_ADS124(self.conn, module-1)
            if not self.module_chips[0].get_resistances(): passed = False   
            data.update({'module ' + str(module): self.module_chips[0].data})
            print(data)

        else:
            for i in range(len(self.module_chips)):
                print("Testing module {}".format(i))
                self.module_chips[i] = module_ADS124(self.conn, i)
                self.conn.send("LCD ; Percent:{:3f} Test:1".format(i/float(len(self.module_chips))))
                passed = self.module_chips[i].get_resistances()
                #if not res_val: passed = False   
                #elif res_val > 100 or res_val < 0.1: passed = False
                data.update({'module ' + str(i+1): self.module_chips[i].data})
                print(data)
    
        
        self.conn.send("LCD ; Passed:{} Test:1".format(passed))
        print("Finishing test...")
        self.conn.send("Done.") 
        return passed, data

    def get_num_modules(self, path="./static/wagontypes.json"):
        
        subtype = self.info_dict["board_sn"][3:-6]

        with open(path, "r") as f:
            
            types_dict = json.load(f)
            
        f.close()

        type_info = types_dict[subtype]
        
        return type_info["NumMod"]


class id_resist_test(Test):

    def __init__(self, conn, board_sn=-1, tester=""):
        self.info_dict = {'name': "ID Resistance Test", 'board_sn': board_sn, 'tester': tester}
        
        
        Test.__init__(self, self.run_ID_test, self.info_dict, conn, num_modules=1, east=False)



    def run_ID_test(self, **kwargs):
        
        self.id_chip = id_ADS124(self.conn)


        passed = True
        num_modules = kwargs['num_modules']
        east = kwargs['east']
        data = {}

        passed = self.id_chip.get_resistances(num_modules, east)
        data.update({'wagon type chip': self.id_chip.data})


        print("Sending message about passing wagon ID")
        self.conn.send("LCD ; Passed:{} Test:2".format(passed))
        self.conn.send("Done.")
        return passed, data



###############################################################################

# Main method
if __name__=="__main__":
    parser=argparse.ArgumentParser(description="RTD Test Config")
    parser.add_argument('--SN', type=str, default="dummySN", help='Wagon serial number string')
    parser.add_argument('--tester', type=str, default="anonymous", help='who is performing the test?')
    args=parser.parse_args()
    test = {'board_sn': args.SN, 'tester': args.tester}
    
    gen_resist_test(**test)

    id_resist_test(**test)
