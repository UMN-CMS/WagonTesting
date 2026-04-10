#!/usr/bin/python3

# TODO items: add support for ECON and ROC

import iic
import time
import os
from pprint import pprint
from enum import Enum

class Mode(Enum):
    V2_WAGON = 0

    V3 = 3 # only engine, no outputs enabled
    V3_ALL = 31 # only engine, but all outputs enabled
    V3_TRAIN = 32 # engine plus full train
    V3_TRAIN_E = 33 # engine plus East wagon (all modules)
    V3_TRAIN_W = 34 # engine plus West wagon (all modules)
    V3_TRAIN_W1 = 341 # engine plus West wagon (module in location 1)
    V3_TRAIN_W2 = 342 # engine plus West wagon (module in location 2)
    V3_TRAIN_W3 = 343 # engine plus West wagon (module in location 3)

    V3HD = 4
    V3HD_DAQ2 = 41
    V3HD_HALF = 42

    V3_TESTER = 39

    EZ = 131

    MEZZ = 401

    SCINT    = 5  # General scintillator MB type
    SCINT_V0 = 50 # Version of the scintillator MB without ECON-D

    FMCV1_TESTER = 10
    DEFAULT = 99 # whatever the default of the class is

    def default_or_env(self):
        env_val=os.environ.get("ENGINE_TOOLS_MODE","DEFAULT")
        return env_val

    def options(self):
        return ["V3","V3_ALL","V3_TESTER","V3HD", "V3HD_HALF", "SCINT","SCINT_V0","EZ", "DEFAULT", "MEZZ"]

    def generalType(self):
        if (self in [Mode.V3_ALL, Mode.V3, Mode.V3_TRAIN, Mode.V3_TRAIN_E, Mode.V3_TRAIN_W,
                     Mode.V3_TRAIN_W1, Mode.V3_TRAIN_W2, Mode.V3_TRAIN_W3, Mode.V3_TESTER]):
            return Mode.V3
        if (self in [Mode.V3HD, Mode.V3HD_DAQ2, Mode.V3HD_HALF]):
            return Mode.V3HD
        if (self in [Mode.SCINT_V0]):
            return Mode.SCINT
        if (self in [Mode.EZ]):
            return Mode.EZ
        if (self in [Mode.MEZZ]):
            return Mode.MEZZ
        return Mode.DEFAULT

class train: 

    def __init__(self,mode="V3HD"):
        if isinstance(mode, Mode):
            self.mode = mode
        else:
            self.mode = Mode[mode]
        self.train_map = self.get_train_map()

    def get_train(self):
        return self.train_map

    def get_train_map(self):
        train_map = {}
        if self.mode.generalType() == Mode.EZ:
            # V3 HD engine by itself, no wagons, no modules
            train_map = {'lpGBT' : ["DAQ"],
                         'VTRX' : [],
                         'ECON' : [],
                         'ROC' : [],
                         'SCA' : []
            }
        if self.mode.generalType() == Mode.MEZZ:
            train_map = {'lpGBT' : ["LPGBT"],
                         'VTRX' : [],
                         'ECON' : [],
                         'ROC' : [],
                         'SCA' : []
            }
        if self.mode.generalType() == Mode.V3HD:
            # V3 HD engine by itself, no wagons, no modules
            train_map = {'lpGBT' : ["DAQ1","DAQ2","TRG1","TRG2","TRG3","TRG4"],
                         'VTRX' : ["VTRX1","VTRX2"],
                         'ECON' : [],
                         'ROC' : [],
                         'SCA' : []
            }
        if self.mode == Mode.V3HD_HALF:
            train_map = {'lpGBT' : ["DAQ1","TRG1","TRG2"],
                         'VTRX' : ["VTRX1"],
                         'ECON' : [],
                         'ROC' : [],
                         'SCA' : []
            }
        elif self.mode == Mode.SCINT_V0:
            train_map = { 'lpGBT' : ["DAQ","TRIG","DAQ2"],
                          'VTRX' : ["VTRX"],
                          "ECON" : ["ECONT-0","ECONT-1"],
                          "ROC" : [],
                          'SCA' : []
#                          "SCA" : ["SCA-A","SCA-BC","SCA-D","SCA-E","SCA-G"]  # SCA support isn't defined at this point
            }
        elif self.mode.generalType() == Mode.V3:
            train_map = {'lpGBT' : ["DAQ","E","W"],
                         'VTRX' : ["VTRX"],
                         'ECON' : [],
                         'ROC' : [],
                         'SCA' : []}
            if self.mode == Mode.V3_TRAIN:
                train_map['ECON'] = ["W1-ECONT","W2-ECONT","W3-ECONT",
                                     "E1-ECONT","E2-ECONT","E3-ECONT",
                                     "W1-ECOND","W2-ECOND","W3-ECOND",
                                     "E1-ECOND","E2-ECOND","E3-ECOND"]
                train_map['ROC'] = ["W1-ROC1","W1-ROC2","W1-ROC3",
                                    "W2-ROC1","W2-ROC2","W2-ROC3",
                                    "W3-ROC1","W3-ROC2","W3-ROC3",
                                    "E1-ROC1","E1-ROC2","E1-ROC3",
                                    "E2-ROC1","E2-ROC2","E2-ROC3",
                                    "E3-ROC1","E3-ROC2","E3-ROC3"]
            elif self.mode == Mode.V3_TRAIN_E:
                train_map['ECON'] = ["E1-ECONT","E2-ECONT","E3-ECONT",
                                     "E1-ECOND","E2-ECOND","E3-ECOND"]
                train_map['ROC'] = ["E1-ROC1","E1-ROC2","E1-ROC3",
                                    "E2-ROC1","E2-ROC2","E2-ROC3",
                                    "E3-ROC1","E3-ROC2","E3-ROC3"]
            elif self.mode == Mode.V3_TRAIN_W:
                train_map['ECON'] = ["W1-ECONT","W2-ECONT","W3-ECONT",
                                     "W1-ECOND","W2-ECOND","W3-ECOND"]
                train_map['ROC'] = ["W1-ROC1","W1-ROC2","W1-ROC3",
                                    "W2-ROC1","W2-ROC2","W2-ROC3",
                                    "W3-ROC1","W3-ROC2","W3-ROC3"]
            elif self.mode == Mode.V3_TRAIN_W1:
                train_map['ECON'] = ["W1-ECONT",
                                     #"W1-ECOND"
                ]
                train_map['ROC'] = ["W1-ROC1","W1-ROC2","W1-ROC3"]
            elif self.mode == Mode.V3_TRAIN_W2:
                train_map['ECON'] = ["W2-ECONT",
                                     #"W2-ECOND"
                ]
                train_map['ROC'] = ["W2-ROC1","W2-ROC2","W2-ROC3"]
            elif self.mode == Mode.V3_TRAIN_W3:
                train_map['ECON'] = ["W3-ECONT",
                                     #"W3-ECOND"
                ]
                train_map['ROC'] = ["W3-ROC1","W3-ROC2","W3-ROC3"]

        return train_map

    def get_target_info(self,target):
        target_info = {}
        # V3 HD
        if self.mode.generalType() == Mode.EZ:
            #if target == "DEFAULT":
            #    target = "DAQ1"
            #    if self.mode == Mode.V3HD_DAQ2:
            #        target = "DAQ2"
            if target == "DAQ":
                target_info = {"device_addr" : 0x20,
                               "icec_type" : "I2C",
                               "indirect_path":None,
                               "indirect_bus":None,
                               "lpgbt_type": "DAQ"
                }
        if self.mode.generalType() == Mode.MEZZ:
            #if target == "DEFAULT":
            #    target = "DAQ1"
            #    if self.mode == Mode.V3HD_DAQ2:
            #        target = "DAQ2"
            if target == "LPGBT":
                target_info = {"device_addr" : 0x74,
                               "icec_type" : "I2C",
                               "indirect_path":None,
                               "indirect_bus":None,
                               "lpgbt_type": "SLOW"}
        if self.mode.generalType() == Mode.V3HD:
            #if target == "DEFAULT":
            #    target = "DAQ1"
            #    if self.mode == Mode.V3HD_DAQ2:
            #        target = "DAQ2"
            if target == "DAQ1":
                target_info = {"device_addr" : 0x70,
                               "icec_type" : "IC",
                               "indirect_path":None,
                               "indirect_bus":None,
                               "lpgbt_type": "DAQ"
                }
            elif target == "TRG1":
                target_info = {"device_addr" : 0x71,
                               "icec_type" : "EC",
                               "indirect_path":"DAQ1",
                               "indirect_bus":2,
                               "lpgbt_type": "TRG"
                }
            elif target == "TRG2":
                target_info = {"device_addr" : 0x72,
                               "icec_type" : "EC",
                               "indirect_path":"DAQ1",
                               "indirect_bus":2,
                               "lpgbt_type": "TRG"
                }
            elif target == "DAQ2":
                # Note: need to have VTRX+ plugged in!
                target_info = {"device_addr" : 0x76,
                               "icec_type" : "IC2",
                               "indirect_path":"DAQ1",
                               "indirect_bus":2,
                               "lpgbt_type": "DAQ"
                }
            elif target == "TRG3":
                # Note: EC only works when DAQ2 has downlink plugged in
                target_info = {"device_addr" : 0x75,
                               "icec_type" : "EC2",
                               "indirect_path":"DAQ1",
                               "indirect_bus":2,
                               "lpgbt_type": "TRG"
                }
            elif target == "TRG4":
                # Note: EC goes through DAQ1
                target_info = {"device_addr" : 0x74,
                               "icec_type" : "EC",
                               "indirect_path":"DAQ1",
                               "indirect_bus":2,
                               "lpgbt_type": "TRG"
                }
            elif target == "VTRX1":
                target_info = {"device_addr" : 0x50,
                               "icec_type" : None,
                               "indirect_path":"DAQ1",
                               "indirect_bus":0
                }
            elif target == "VTRX2":
                target_info = {"device_addr" : 0x50,
                               "icec_type" : None,
                               "indirect_path":"DAQ2",
                               "indirect_bus":0
                }
        if self.mode.generalType() == Mode.V3HD_HALF:
            #if target == "DEFAULT":
            #    target = "DAQ1"
            #    if self.mode == Mode.V3HD_DAQ2:
            #        target = "DAQ2"
            if target == "DAQ1":
                target_info = {"device_addr" : 0x70,
                               "icec_type" : "IC",
                               "indirect_path":None,
                               "indirect_bus":None,
                               "lpgbt_type": "DAQ"
                }
            elif target == "TRG1":
                target_info = {"device_addr" : 0x71,
                               "icec_type" : "EC",
                               "indirect_path":"DAQ1",
                               "indirect_bus":2,
                               "lpgbt_type": "TRG"
                }
            elif target == "TRG2":
                target_info = {"device_addr" : 0x72,
                               "icec_type" : "EC",
                               "indirect_path":"DAQ1",
                               "indirect_bus":2,
                               "lpgbt_type": "TRG"
                }
        # SCINT
        elif self.mode.generalType() == Mode.SCINT:
            if target == "DAQ":
                target_info = { "device_addr" : 0x70,
                                "icec_type" : "IC",
                                "indirect_path":None,
                                "indirect_bus":None,
                                "lpgbt_type": "DAQ"
                }
            elif target == "TRIG":
                target_info = { "device_addr" : 0x71,
                                "icec_type" : "EC",
                                "indirect_path":"DAQ",
                                "indirect_bus":0,
                                "lpgbt_type": "TRG"
                }
            elif target == "DAQ2" and self.mode ==  Mode.SCINT_V0:
                target_info = { "device_addr" : 0x70,
                                "icec_type" : None,
                                "indirect_path":"TRIG",
                                "indirect_bus":0,
                                "lpgbt_type": "TRG"
                }                
            elif target == "ECONT-0":
                target_info = { "device_addr" : 0x20,
                                "icec_type" : None,
                                "indirect_path":"TRIG",
                                "indirect_bus":1
                }                
            elif target == "ECONT-1":
                target_info = { "device_addr" : 0x20,
                                "icec_type" : None,
                                "indirect_path":"TRIG",
                                "indirect_bus":2
                }
            elif target == "VTRX":
                target_info = {"device_addr" : 0x50,
                               "icec_type" : None,
                               "indirect_path":"DAQ",
                               "indirect_bus":1                
                }
            elif target =="SCA-A":
                target_info = {"icec_type" : None,
                               "indirect_path" : None
                }
            elif target =="SCA-BC":
                target_info = {"icec_type" : None,
                               "indirect_path" : None
                }
            elif target =="SCA-D":
                target_info = {"icec_type" : None,
                               "indirect_path" : None
                }
            elif target =="SCA-E":
                target_info = {"icec_type" : None,
                               "indirect_path" : None
                }
            elif target =="SCA-G":
                target_info = {"icec_type" : None,
                               "indirect_path" : None
                }
        # V3 LD
        elif self.mode.generalType() == Mode.V3:
            #if target == "DEFAULT":
            #    target = "DAQ"

            if target == "DAQ":
                target_info = {"device_addr" : 0x70,
                               "icec_type" : "IC",
                               "indirect_path":None,
                               "indirect_bus":None,
                               "lpgbt_type": "DAQ"
                }
            elif target == "W":
                target_info = {"device_addr" : 0x71,
                               "icec_type" : "EC",
                               "indirect_path":"DAQ",
                               "indirect_bus":0,
                               "lpgbt_type" : "TRG"
                }
            elif target == "E":
                target_info = {"device_addr" : 0x72,
                               "icec_type" : "EC",
                               "indirect_path":"DAQ",
                               "indirect_bus":0,
                               "lpgbt_type" : "TRG"
                }
            elif target == "VTRX":
                target_info = {"device_addr" : 0x50,
                               "icec_type" : None,
                               "indirect_path":"DAQ",
                               "indirect_bus":1
                }
            elif target == "W1-ECONT":
                target_info = {"device_addr" : 0x20,
                               "icec_type" : None, "indirect_path":"W", "indirect_bus":0
                }
            elif target == "W2-ECONT":
                target_info = {"device_addr" : 0x20,
                               "icec_type" : None, "indirect_path":"W", "indirect_bus":1
                }
            elif target == "W3-ECONT":
                target_info = {"device_addr" : 0x20,
                               "icec_type" : None, "indirect_path":"W", "indirect_bus":2
                }
            elif target == "E1-ECONT":
                target_info = {"device_addr" : 0x20,
                               "icec_type" : None, "indirect_path":"E", "indirect_bus":0
                }
            elif target == "E2-ECONT":
                target_info = {"device_addr" : 0x20,
                               "icec_type" : None, "indirect_path":"E", "indirect_bus":1
                }
            elif target == "E3-ECONT":
                target_info = {"device_addr" : 0x20,
                               "icec_type" : None, "indirect_path":"E", "indirect_bus":2
                }
            elif target == "W1-ECOND":
                target_info = {"device_addr" : 0x21, # Verify this once boards arrive!
                               "icec_type" : None, "indirect_path":"W", "indirect_bus":0
                }
            elif target == "W2-ECOND":
                target_info = {"device_addr" : 0x21,
                               "icec_type" : None, "indirect_path":"W", "indirect_bus":1
                }
            elif target == "W3-ECOND":
                target_info = {"device_addr" : 0x21,
                               "icec_type" : None, "indirect_path":"W", "indirect_bus":2
                }
            elif target == "E1-ECOND":
                target_info = {"device_addr" : 0x21,
                               "icec_type" : None, "indirect_path":"E", "indirect_bus":0
                }
            elif target == "E2-ECOND":
                target_info = {"device_addr" : 0x21,
                               "icec_type" : None, "indirect_path":"E", "indirect_bus":1
                }
            elif target == "E3-ECOND":
                target_info = {"device_addr" : 0x21,
                               "icec_type" : None, "indirect_path":"E", "indirect_bus":2
                }
                

        if not target_info: print("Did not find any match for target", target, "in mode", self.mode)
        return target_info


    def print_train_map(self):
        print("Train in mode", self.mode, ", contains following targets: ")
        pprint(self.train_map)

    def print_lpgbts(self):
        print("Train in mode", self.mode, ", contains following lpGBTs: ")
        pprint(self.train_map['lpGBT'])
        
    def print_vtrxs(self):
        print("Train in mode", self.mode, " contains following VTRX+: ")
        pprint(self.train_map['VTRX'])
        


    def get_lpgbts(self, lpgbt_type):
        mylist = set()
        for lpgbt in self.train_map['lpGBT']:
            mytype = self.get_target_info(lpgbt)["lpgbt_type"]
            if lpgbt_type == "ALL" or mytype == lpgbt_type:
                mylist.add(lpgbt)
        return mylist

    def get_vtrxs(self):
        mylist = set()
        for vtrx in self.train_map['VTRX']:
            mylist.add(vtrx)
        return mylist

class engine_comm:

    def __init__(self,protocol="AUTO",mode="V3HD"):
        # Determine communication protocol
        if protocol == "AUTO":
            self.protocol=iic.determineDefaults()['protocol']
        else:
            self.protocol = protocol
        # Determine train configuration
        self.train = train(mode)
        # Setup connections to all train components:
        self.train_connections = self.make_train_connections()
        # save the mode for future use
        if mode is str: 
            self.mode=Mode[mode]
        else:
            self.mode=mode


    def make_train_connections(self):
        train_conns = {}
        for target_class, targetlist in self.train.get_train().items():
            for target in targetlist:
                target_iic = self.get_iic_for_target(target)
                train_conns[target] = target_iic
        return train_conns


    def get_iic_for_target(self,target):
        target_info = self.train.get_target_info(target)
        if not target_info:
            return None
        #print(target, target_info)
        if self.protocol == "I2C":
            return iic.iic(self.protocol,
                           i2c_addr=target_info["device_addr"])
        elif self.protocol == "ICEC":
            if target_info["icec_type"]:
                return iic.iic(self.protocol,
                           icec_type=target_info["icec_type"],
                           icec_addr=target_info["device_addr"])
            else:
                if target_info["indirect_path"]:
                    indirect_info = self.train.get_target_info(target_info["indirect_path"])
                    indirect_path = iic.iic(protocol="ICEC",
                                            icec_type=indirect_info["icec_type"],
                                            icec_addr=indirect_info["device_addr"],
                                            lbus = target_info["indirect_bus"])
                    return iic.iic(protocol="I2C",
                                   i2c_addr = target_info["device_addr"],
                                   indirect_path = indirect_path)                
                else:
                    print("Incomplete info for connection, provide icec_type or indirect_path")
        elif self.protocol == "ICI2C":
            if target_info["indirect_path"] is None:
                # No indirect path, must use the direct path instead
                return iic.iic(self.protocol,
                               icec_type=target_info["icec_type"],
                               icec_addr=target_info["device_addr"])
            else:
                indirect_info = self.train.get_target_info(target_info["indirect_path"])
                indirect_path = iic.iic(protocol="ICEC",
                                        icec_type=indirect_info["icec_type"],
                                        icec_addr=indirect_info["device_addr"],
                                        lbus = target_info["indirect_bus"])
                return iic.iic(protocol="I2C",
                               i2c_addr = target_info["device_addr"],
                               indirect_path = indirect_path)                

    def connect(self, dev=None,xml=None,uhaldevice=None):
        for target, conn in self.train_connections.items():
            if conn:
                if conn.indirect_path is not None:
                    conn.indirect_path.connect(dev,xml,uhaldevice)
                else:
                    conn.connect(dev, xml, uhaldevice)

    def close(self):
        for target, conn in self.train_connections.items():
            if conn is None: continue
            if conn.indirect_path is not None:
                conn.indirect_path.close()
            else:
                conn.close()

    def write_lpgbt(self, reg, val, target="DAQ"):
        myiic = self.train_connections[target]
        if myiic.protocol=="I2C":
            vals = [reg&0xFF,(reg>>8)&0xFF] #order expected by the lpGBT
            if type(val) is list:
                vals.extend(val)
            else:
                vals.append(val)
            # print("I2C write to lpGBT", target, ":", [hex(v) for v in vals])
            myiic.write(vals)
        else:
            myiic.write_lpgbt(reg, val)

    def read_lpgbt(self, reg, nwords=1, target="DAQ"):
        myiic = self.train_connections[target]
        if myiic.protocol == "I2C":
            #print("I2C protocol detected")
            vals = [reg&0xFF,(reg>>8)&0xFF] #order expected by the lpGBT
            myiic.write(vals)
            return myiic.read(nwords)
        else:
            return myiic.read_lpgbt(reg,nwords)

    def get_daq_lpgbts(self):
        return self.train.get_lpgbts("DAQ")

    def get_slow_lpgbts(self):
        return self.train.get_lpgbts("SLOW")

    def get_trigger_lpgbts(self):
        return self.train.get_lpgbts("TRG")

    def get_lpgbts(self):
        return self.train.get_lpgbts("ALL")

    def get_vtrxs(self):
        return self.train.get_vtrxs()

    def write_vtrx(self,reg,val,target):
        myiic = self.train_connections[target]
        myiic.indirect_path.i2c_speed = 2 # 400 kHz (tested with both prototype and production VTRX+ by AD and JT on 20220429)
        vals = [reg&0xFF] # reg address is only 1 byte
        if type(val) is list:
            vals.extend(val)
        else:
            vals.append(val)
        myiic.write(vals)
        
    def read_vtrx(self,reg,nwords,target):
        myiic = self.train_connections[target]
        myiic.indirect_path.i2c_speed = 2 # 400 kHz (tested with both prototype and production VTRX+ by AD and JT on 20220429)
        # Reading back one byte from reg  
        vals = [reg&0xFF]
        myiic.write(vals)
        output = myiic.read(nwords)
        return output

    def print_train(self):
        self.train.print_train_map()

    def print_lpgbts(self):
        self.train.print_lpgbts()

    def print_vtrxs(self):
        self.train.print_vtrxs()


#---------- Not yet updated ---------------
    def write_econ(self,econ_addr,reg,val):
        vals = [(reg>>8)&0xFF,reg&0xFF] #order expected by the econ
        if type(val) is list:
            vals.extend(val)
        else:
            vals.append(val)
        self.myiic.write_i2c_indirect(econ_addr, vals)

    def read_econ(self,econ_addr,reg,nwords=1):
        vals = [(reg>>8)&0xFF,reg&0xFF] #order expected by the econ
        self.myiic.write_i2c_indirect(econ_addr, vals)
        output = self.myiic.read_i2c_indirect(econ_addr, nwords)
        return output

    def translate_roc_regs(self,sub_addr,reg):
        if int(reg).bit_length() > 5:       print('ERROR: Invalid ROC register number in extended address')
        if int(sub_addr).bit_length() > 11: print('ERROR: Invalid ROC sub-address in extended address')
        R0 = ((sub_addr & 0b111) << 5) ^ reg
        R1 = sub_addr >> 3
        return [R0,R1]

    def write_roc_direct(self,roc_addr,sub_addr,reg,val):
        roc_full_addr0 = roc_addr << 3 | 0
        roc_full_addr1 = roc_addr << 3 | 1
        roc_full_addr2 = roc_addr << 3 | 2
        # translate sub-address and register to R0 and R1
        [R0,R1] = self.translate_roc_regs(sub_addr,reg)
        # write the address to write
        self.myiic.write_i2c_indirect(roc_full_addr0, [R0])
        self.myiic.write_i2c_indirect(roc_full_addr1, [R1])
        # do the write interaction
        self.myiic.write_i2c_indirect(roc_full_addr2, [val])

    def read_roc_direct(self,roc_addr,sub_addr,reg):
        roc_full_addr0 = roc_addr << 3 | 0
        roc_full_addr1 = roc_addr << 3 | 1        
        roc_full_addr2 = roc_addr << 3 | 2
        # translate sub-address and register to R0 and R1
        [R0,R1] = self.translate_roc_regs(sub_addr,reg)
        # write the address to read
        self.myiic.write_i2c_indirect(roc_full_addr0, [R0])
        self.myiic.write_i2c_indirect(roc_full_addr1, [R1])
        # do the read interaction
        output = self.myiic.read_i2c_indirect(roc_full_addr2, 1)
        return output[0]

    def write_roc_direct_R0R1(self,roc_addr,R0,R1,val):
        roc_full_addr0 = roc_addr << 3 | 0
        roc_full_addr1 = roc_addr << 3 | 1
        roc_full_addr2 = roc_addr << 3 | 2
        # write the address to write
        self.myiic.write_i2c_indirect(roc_full_addr0, [R0])
        self.myiic.write_i2c_indirect(roc_full_addr1, [R1])
        # do the write interaction
        self.myiic.write_i2c_indirect(roc_full_addr2, [val])

    def read_roc_direct_R0R1(self,roc_addr,R0,R1):
        roc_full_addr0 = roc_addr << 3 | 0
        roc_full_addr1 = roc_addr << 3 | 1        
        roc_full_addr2 = roc_addr << 3 | 2
        # write the address to read
        self.myiic.write_i2c_indirect(roc_full_addr0, [R0])
        self.myiic.write_i2c_indirect(roc_full_addr1, [R1])
        # do the read interaction
        output = self.myiic.read_i2c_indirect(roc_full_addr2, 1)
        return output[0]

    def write_roc(self,roc_addr, page, offset, val):
        pass

    def read_roc(self, roc_addr, page, offset):
        pass


if __name__ == "__main__": 
    mytrain_V3 = train("V3")
    mytrain_V3.print_train_map()
    mytrain_V3HD = train("V3HD")
    mytrain_V3HD.print_train_map()
