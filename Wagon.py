#!/usr/bin/python3

import os
import json

class Wagon:
    '''
    Class to handle the setup of the crosspoints for different wagon types
    Used in conjunction with the wagontypes.json file
    '''    

    def __init__(self, serial_num):
        self.full_sn = serial_num
        self.subtype = serial_num[4:10]
        print(self.subtype)
        self.sn = serial_num[10:]
 
        cfg_dict = self.get_config()
        
        self.set_crosspoint(cfg_dict)
        
       
    # Get configuration from json file
    def get_config(self, cfg_file="./wagontypes.json"):
        with open(cfg_file) as f:
            wagon_cfg = json.load(f)

        f.close()

        for e in wagon_cfg.keys():
            if e == self.subtype:
                cfg_dict = wagon_cfg[e]

        return cfg_dict

    # Set crosspoint based on the wagon subtype
    def set_crosspoint(self, cfg_dict):
        print(cfg_dict.keys())

serial_num = "320512DBGW00001"

Wagon(serial_num)
    
