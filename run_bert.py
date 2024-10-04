#!/usr/bin/python

from argparse import ArgumentParser
from datetime import datetime, timedelta
from fit_bert import FitData
from wagoneer import Wagon
from Test import Test
from collections import OrderedDict
from multiprocessing import Pipe
from pathlib import Path

import numpy as np
import os
import json
import time
import sys

#parser = ArgumentParser()
#
#parser.add_argument("-m", "--module", action="store", type=int, dest="module", help="Module to use PRBS for bit error rate test", default=None)
#parser.add_argument("-o", "--output", action="store", type=str, dest="output", help="Output file name/path for BER data", default="scans/BERT.csv")
#parser.add_argument("--long", action="store_true", dest="long", help="Run long BER scan (iskip required)", default=False)
#parser.add_argument("--delayskip", action="store", type=int, dest="iskip", help="Skip for delay (0 to 425)", default=1)
#parser.add_argument("--nbits", action="store", type=float, dest="nbits", help="Number of bits to collect for long scan (1e12 by default)", default=1e12)
#
#args = parser.parse_args()

class BERT(Test):

    def __init__(self, conn, board_sn=-1, tester='', module=None, clock=True):
        self.info_dict = {'name': "Bit Error Rate Test", 'board_sn': board_sn, 'tester': tester}
        self.conn = conn
        #Test.__init__(self, self.bert, self.info_dict, conn, output='/home/HGCAL_pro/BERT.csv', iskip=5, nbits=1e8, module=module, clock=clock)
        Test.__init__(self, self.bert, self.info_dict, conn, output='BERT.csv', iskip=5, nbits=1e8, module=module, clock=clock)

    def bert(self, **kwargs):
        self.scans = []
        self.crossovers = []
        self.wagon = Wagon()
        self.mod = kwargs['module']
        self.clock = kwargs['clock']
        self.iskip = kwargs['iskip']

        self.invert_map = [0,0,0,0,0,0,0,0,0]

        self.reset_zeros()
        self.scan_mask, self.link_names = self.setup_links(self.info_dict['board_sn'], self.mod, self.clock)
        self.rxs = [idx for idx, val in enumerate(self.scan_mask) if val != 0]
        self.set_prbs_len()
        self.set_prbs(1)

        self.run_long_scan(kwargs['iskip'], kwargs['nbits'], kwargs['output'])

        """for i in [1, 5, 10]:

            scan = self.run_test(i)
            
            self.scans.append(scan)        
            self.crossovers.append(self.parse_scan(scan, i))
        
        for co in self.crossovers:
            self.print_qp_info(co)
        """

        self.conn.send("LCD ; Percent:{:3f} Test:4".format(0.5))
        #fitdata = FitData("/home/HGCAL_pro/BERT.csv", self.conn, scan_mask=self.scan_mask, iskip=self.iskip)
        fitdata = FitData("BERT.csv", self.conn, scan_mask=self.scan_mask, iskip=self.iskip)

        results = fitdata.get_results()
        self.passed = True
        self.data = {}
        for i,r in enumerate(results):
        #    self.conn.send("LCD ; Percent:{:3f} Test:4".format(0.5 + 0.5 * (i/float(len(results)))))
            if r is None:
                print("Bad scan found on RX {}".format(self.rxs[i]))
                continue
            r['passed'] = True
            if not r["Eye Opening"] >= 180 or r["Midpoint Errors"] != 0:
                r['passed'] = False
                self.passed = False
            link_name = self.link_names[self.rxs[i]]
            self.data[link_name] = r
            link_mod = r['Module']
            for sub_dict in self.wag_info[f'Mod{link_mod}']:
                for sub_dict2 in self.wag_info[f'Mod{link_mod}'][sub_dict]:
                    if self.wag_info[f'Mod{link_mod}'][sub_dict][sub_dict2]["Eng_Elink"] == link_name:
                        self.data[link_name].update({"Mod_Elink": self.wag_info[f'Mod{link_mod}'][sub_dict][sub_dict2]['Mod_Elink']})
                        break

        self.copy = {}
        for key1, d in self.data.items():
            self.copy[key1] = {}
            for key2, x in d.items():
                if isinstance(x, (int, np.integer)):
                    self.copy[key1][key2] = int(x)
                else:
                    self.copy[key1][key2] = x
             
        self.data = self.copy
       
        #self.conn.send("LCD ; Passed:{} Test:4".format(self.passed))
        time.sleep(0.1)
        self.conn.send("Done.")
        print('Done.')
        print({"pass": self.passed, "data": self.data})
        return self.passed, self.data

    def reset_zeros(self):
        ZERO_MODE = 7
        for i in range(0,5):
            self.wagon.set_tx_mode(i, ZERO_MODE)

    def set_prbs_len(self):
        self.wagon.set_prbs_len(30000000)

    def set_prbs(self, tx):
        PRBS = 1
        for i in range(0,8):
            self.wagon.set_tx_mode(i, PRBS)
        

    def setup_links(self, board_sn, module, clock):
        self.link_dict, scan_mask, link_names = self.get_links(board_sn, module=module, clock=clock)
        self.set_crosspoint(self.link_dict)
        #self.set_inverts()

        return scan_mask, link_names

    def set_inverts(self):
        for (i,inv) in enumerate(self.invert_map):
            if inv == 1:
                self.wagon.set_invert(i)
            else:
                self.wagon.clear_invert(i)

    def set_crosspoint(self, link_dict):
        for mod in link_dict.keys():
            print("python3 HwInterface/wagon_set_crosspoint.py --module {} --outputs {} {} {} {}".format(mod, link_dict[mod][0], link_dict[mod][1], link_dict[mod][2], link_dict[mod][3]))
            os.system("python3 HwInterface/wagon_set_crosspoint.py --module {} --outputs {} {} {} {}".format(mod, link_dict[mod][0], link_dict[mod][1], link_dict[mod][2], link_dict[mod][3]))

        #This should work but there is a weird python version thing going on that I can't solve right now
        '''for mod in range(0,3):
            self.cp.config(mod)
            for ii in range(0,4):
                self.cp.program_output(ii, 2)
        '''

    #def run_test(self, iskip):
    #    return self.wagon.scan(iskip)

    def get_links(self, board_sn="3205WEDBG100001", cfg_path = Path.cwd() / "static" / "wagontypes.json", module=None, clock=True):
        self.subtype = board_sn[3:-6]
        print(self.subtype)

        with open(cfg_path, "r") as json_file:
            data = json.load(json_file)
        json_file.close()

        self.wag_info = data[self.subtype]

        link_dict = {}
       
        if module is not None:

            inputs = self.wag_info["Mod{}".format(module)]["Inputs"]
            print(inputs)
            outputs = self.wag_info["Mod{}".format(module)]["Outputs"]
            print(outputs)

            nin = len(inputs.keys())
            nout = len(outputs.keys())

            if nin == 1:
                link_dict[str(module)] = [list(inputs.keys())[0], list(inputs.keys())[0], list(inputs.keys())[0], list(inputs.keys())[0]]
            elif nin == 2:
                link_dict[str(module)] = [list(inputs.keys())[0], list(inputs.keys())[0], list(inputs.keys())[1], list(inputs.keys())[1]]
            elif nin == 3:
                link_dict[str(module)] = [list(inputs.keys())[0], list(inputs.keys())[0], list(inputs.keys())[1], list(inputs.keys())[1]]
 
        else:

            inputs = OrderedDict()
            outputs = OrderedDict()
            for mod in range(1,self.wag_info["NumMod"]+1):
                inputs[mod] = self.wag_info["Mod{}".format(mod)]["Inputs"]
                outputs[mod] = self.wag_info["Mod{}".format(mod)]["Outputs"]

                in_dict = self.wag_info["Mod{}".format(mod)]["Inputs"]

                new_in_dict = {}
                for key,i in in_dict.items():
                    if "XING" not in i["Eng_Elink"] and "TRIG4" not in i["Eng_Elink"]:
                        new_in_dict[key] = i

                out_dict = self.wag_info["Mod{}".format(mod)]["Outputs"]

                nin = len(new_in_dict.keys())
                nout = len(out_dict.keys())
                print("Module {} has {} inputs and {} outputs".format(mod, nin, nout))

                if nin == 1:
                    link_dict[str(mod)] = [list(new_in_dict.keys())[0], list(new_in_dict.keys())[0], list(new_in_dict.keys())[0], list(new_in_dict.keys())[0]]
                elif nin == 2:
                    link_dict[str(mod)] = [list(new_in_dict.keys())[0], list(new_in_dict.keys())[0], list(new_in_dict.keys())[1], list(new_in_dict.keys())[1]]
                elif nin == 3:
                    link_dict[str(mod)] = [list(new_in_dict.keys())[0], list(new_in_dict.keys())[0], list(new_in_dict.keys())[1], list(new_in_dict.keys())[1]]

        scan_mask = [0] * 12
        
        link_names = {}

        with open(Path.cwd() / 'static' /'txrx.json') as link_file:

            txrx = json.load(link_file)
            
            if module is not None:

                for rx in txrx["RX"]:

                    idx = int(rx["num"])

                    for out in outputs.values():

                        if rx["link"] == out["Eng_Elink"]:
                            
                            scan_mask[idx+1] = module
                            link_names[idx+1] = rx["link"]
            else: 
       
                for mod in range(1,self.wag_info["NumMod"]+1):
     
                    for rx in txrx["RX"]:

                        idx = int(rx["num"])

                        for out in outputs[mod].values():

                            if rx["link"] == out["Eng_Elink"]:
                                
                                scan_mask[idx+1] = mod
                                link_names[idx+1] = rx["link"]


        # We will always have the first modules clock
        if clock:

            if module is not None:
                scan_mask [7 + module] = module
                link_names[7 + module] = "CLK{}".format(module-1) 

            else:
                scan_mask[8] = 1
                link_names[8] = "CLK0"

                if self.wag_info["NumMod"] >= 2:
                    scan_mask[9] = 2
                    link_names[9] = "CLK1"

                if self.wag_info["NumMod"] == 3:
                    scan_mask[10] = 3
                    link_names[10] = "CLK2"

        link_file.close()
        print(scan_mask)

        return link_dict, scan_mask, link_names

    def run_long_scan(self, iskip=1, max_bit=1e8, output=""):
        i_bit = 0
        BIT_PER_SCAN = 100000008
        self.long_scan = []
        start = datetime.now()
        i = 1
        while i_bit < max_bit:
            self.conn.send("Running scan {} of {}".format(i, int(max_bit/BIT_PER_SCAN)+1))
            
            
            # Long process that prints all of the numbers to the server console
            # Approx. 30 seconds to complete
            self.conn.send("Wait 1 minute until this stage is complete...")
            current_scan = self.wagon.scan(iskip, self.conn)

            self.conn.send("1 minute stage complete")



            self.sum_scans(current_scan)
       
            i_bit += BIT_PER_SCAN

            total_rt = datetime.now() - start
            avg_rt = (datetime.now() - start) / i
            end_time = datetime.now() + avg_rt * (int(max_bit/BIT_PER_SCAN)+1 - i) 
            time_change = timedelta(hours=5)
        
            self.long_scan_to_csv(iskip, output)

            self.conn.send("Total Runtime: {} \t Runtime Per Scan: {} \t Estimated Ending Time: {}".format(total_rt, avg_rt, end_time - time_change)) 
            i += 1

    def sum_scans(self, scan):
        if self.long_scan == []:
            self.long_scan = scan
        else:
            for i in range(0, len(scan)):
                new_list = [scan[i],self.long_scan[i]]
                self.long_scan[i] = [sum(ber) for ber in zip(*new_list)]

    def parse_scan(self, scan, iskip):
        crossovers = {"delayStep": iskip}
        for (i, fi) in enumerate(scan):
            co1 = []
            co2 = []
            start = 0
            end = 425
            last = -1
            for (j,ber) in enumerate(fi):
                if ber != 0 and last == -1:
                    last = ber
                    start = j
                elif ber == 0 and last != -1:
                    end = j-1
                    if co1 == []:
                        co1 = [start, end]
                    else:
                        co2 = [start, end]
                    last = -1

            crossovers["link{}".format(i)] = [co1, co2]

        return crossovers
                
    def long_scan_to_csv(self, iskip, output):
        
        self.conn.send("Beginning to map to csv...")
        to_csv = map(list, zip(*self.long_scan))

        with open(output, 'w') as f:
            for (i, line) in enumerate(to_csv):
                out = "{0: <8}".format(i*iskip)
                for word in line:
                    out += "{0: <13}".format(word)
                f.write(out + "\n")
                


        f.close()

    def print_qp_info(self, co_info):
        self.conn.send("\n")
        self.conn.send("\n")
        self.conn.send("-------------------------------")
        self.conn.send("Delay Step Size: {}".format(co_info["delayStep"]))
        self.conn.send("-------------------------------")
        self.conn.send("\n")
        for i in range(0,9):
            self.conn.send("Printing Crossover info for Link {}".format(i))
            self.conn.send("-----------------------------------")
            co1 = co_info["link{}".format(i)][0]
            co2 = co_info["link{}".format(i)][1]
            if co1 == [] or co2 == []:
                self.conn.send("Oops! Something went wrong on this link, check connections\n")
                continue
            self.conn.send("Quiet Period Length: {} ".format(co_info["delayStep"] * (co2[0] - co1[1])))
            self.conn.send("Cross Over Length: {} \n".format(co_info["delayStep"] * max(co1[1] - co1[0], co2[1] - co2[0])))
            

#BERT(args.output, args.iskip, args.nbits, args.module)

if __name__ == '__main__':

    c1, c2 = Pipe()
    sn = sys.argv[1]
    tester = sys.argv[2]

    test_info = {'board_sn': str(sn), 'tester': tester}
    BERT(c1, module = None, clock=True, **test_info) 
