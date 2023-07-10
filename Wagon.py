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
        self.sn = serial_num[10:]
 
        cfg_dict = self.get_config()
        
        self.get_crosspoint_cfg(cfg_dict)
       
    # Get configuration from json file
    def get_config(self, cfg_file="./static/wagontypes.json"):
        with open(cfg_file) as f:
            wagon_cfg = json.load(f)

        f.close()

        for e in wagon_cfg.keys():
            if e == self.subtype:
                cfg_dict = wagon_cfg[e]

        return cfg_dict

    def map_inputs(self, ins, outs):
        # Function to map the inputs of crosspoint to outputs based on number of in/outputs

        num_in = len(ins)
        num_out = len(outs)

        # Find unconnected outputs, will set to input 3 (non connected input)
        no_out = [x for x in [0, 1, 2, 3] if x not in outs]

        if num_in > num_out:
            print("Something is wrong with subtype {} config, check json file".format(self.subtype))
            return None

        else:
            # Make copy of all elements in list 4 times 
            # Minimal case 1 in to 4 outs, maximal 3 in to 4 out means len(temp) = (4, 12))
            temp = ins * 4

            # Grab the inputs to map to output (i.e. output[j] = i will map input i -> output j)
            ''' Thinking through the cases:
            num_in == 1: output = [ins[0]] * num_out
            num_in == 2, num_out == 2: output = [ins[0], ins[1]]
            num_in == 2, num_out == 3: output = [ins[0], ins[1], ins[0]]
            num_in == 2, num_out == 4: output = [ins[0], ins[1], ins[0], ins[1]]
            num_in == 3, num_out == 3: output = [ins[0], ins[1], ins[2]]
            num_in == 3, num_out == 4: output = [ins[0], ins[1], ins[2], ins[0]]
            '''
            output = []
            for i in range(4):
                if i in no_out:
                    output.append(3)
                else:
                    output.append(temp[i])
            return output

    # Set crosspoint based on the wagon subtype
    def get_crosspoint_cfg(self, cfg_dict):
        # Parses the dictionary to determine the number of inputs and outputs
        self.num_mod = cfg_dict["NumMod"]
        self.crosspoint_cfg = {}

        # Figure out how to map the inputs to outus based on numbers above
        for i_mod in range(1, self.num_mod+1):
            current_mod = cfg_dict["Mod{}".format(i_mod)]
            ins = sorted([int(x) for x in current_mod["Inputs"].keys()])
            outs = sorted([int(x) for x in current_mod["Outputs"].keys()])

            
            
            # Call wagon_set_crosspoint.py to map inputs to outputs with proper configuration

                # wagon_set_crosspoint only works in python2
                # os.system('python wagon_set_crosspoint [options]')
                # Example: (0->0, 1->1, 2->2, 2->3) = python wagon_set_crosspoint --module 1 --outputs 0 1 2 2

            # Use wagoneer.py to configure the inverts
            self.crosspoint_cfg["Mod{}".format(i_mod)] = self.map_inputs(ins, outs)

        print(self.crosspoint_cfg)


serial_num = "3205WWDBG100001"

Wagon(serial_num)
    
