#!/usr/bin/python

from argparse import ArgumentParser
from datetime import datetime, timedelta
from fit_bert import FitData
from wagoneer import Wagon
from Test import Test
from collections import OrderedDict
from multiprocessing import Pipe
from pathlib import Path
from HwInterface.set_crosspoint import set_crosspoint

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

    def __init__(self, conn, board_sn=-1, tester='', module=None, clock=True, prbs_len=int(3e7), iskip=1, output=None, run=True):
        self.info_dict = {'name': "Bit Error Rate Test", 'board_sn': board_sn, 'tester': tester}
        self.conn = conn
        if output == None:
            self.output = Path().home() / "BERT.csv"
        else:
            self.output = output
        if run:
            Test.__init__(self, self.bert, self.info_dict, conn, output=self.output, iskip=iskip, nbits=3e7, module=module, clock=clock, prbs_len=prbs_len)

    def bert(self, **kwargs):

        self.passing_criteria = {
            'min_fit_eo': 0.5,
            'min_data_eo': 0.0,
            'max_fit_qual': 0.01,
        }

        self.scans = []
        self.crossovers = []
        self.wagon = Wagon()
        self.mod = kwargs['module']
        self.clock = kwargs['clock']
        self.iskip = kwargs['iskip']
        self.prbs_len = kwargs['prbs_len']

        self.invert_map = [0,0,0,0,0,0,0,0,0]

        self.scan_mask, self.link_names = self.setup_links(self.info_dict['board_sn'], self.mod, self.clock)
        self.reset_zeros()
        self.rxs = [idx for idx, val in enumerate(self.scan_mask) if val != 0]

        comments = []
        self.passed = True
        self.data = {}
        
        res_elink, comments = self.elink_continuity_test(comments)

        # Run short scan to check which mode the clock RX should run in (9 or 10)
        iskip_short = 1
        prbs_short = int(3e5)

        self.set_prbs_len(prbs_short)
        self.scan_mask, self.link_names = self.setup_links(self.info_dict['board_sn'], self.mod, self.clock)
        self.reset_zeros()
        self.set_prbs()
        self.run_long_scan(iskip_short, prbs_short, kwargs['output'])
        temp_fit_data = FitData(self.output, self.conn, scan_mask=self.scan_mask, iskip=self.iskip, prbs_len=prbs_short, short=True)
        shift_map = temp_fit_data.get_shift_map()

        #self.reset_zeros()
        self.set_prbs_len(self.prbs_len)
        self.set_prbs(shift_map=shift_map)

        self.run_long_scan(kwargs['iskip'], kwargs['nbits'], kwargs['output'])

        """for i in [1, 5, 10]:

            scan = self.run_test(i)
            
            self.scans.append(scan)        
            self.crossovers.append(self.parse_scan(scan, i))
        
        for co in self.crossovers:
            self.print_qp_info(co)
        """

        #self.conn.send("LCD ; Percent:{:3f} Test:4".format(0.5))
        fitdata = FitData(self.output, self.conn, scan_mask=self.scan_mask, iskip=self.iskip, prbs_len=self.prbs_len)

        results = fitdata.get_results()
        for i,r in enumerate(results):
        #    self.conn.send("LCD ; Percent:{:3f} Test:4".format(0.5 + 0.5 * (i/float(len(results)))))
            if r is None:
                print("Bad scan found on RX {}".format(self.rxs[i]))
                comments.append('Malformed scan for {}'.format(self.link_names[self.rxs[i]]))
                continue
            r['passed'] = True
            
            #if not r["Fit Eye Opening"] >= 170 or r["Midpoint Errors"] != 0:
            if not (r["Fit Eye Opening"] >= self.passing_criteria['min_fit_eo'] and r["Data Eye Opening"] > self.passing_criteria['min_data_eo'] and r['Fit Quality'] <= self.passing_criteria['max_fit_qual']):
                r['passed'] = False
                self.passed = False
                if not r["Fit Eye Opening"] >= self.passing_criteria['min_fit_eo']:
                    comments.append('Fit eye opening smaller than {} for {}'.format(self.passing_criteria['min_fit_eo'], self.link_names[self.rxs[i]]))
                if not r["Data Eye Opening"] > self.passing_criteria['min_data_eo']:
                    comments.append('Number of bit errors always greater than zero for {}'.format(self.link_names[self.rxs[i]]))
                if not r['Fit Quality'] <= self.passing_criteria['max_fit_qual']:
                    comments.append('Fit quality requirement failed for {}'.format(self.link_names[self.rxs[i]]))

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

        self.copy['elink_continuity'] = res_elink
        self.passed &= res_elink['pass_continuity']

        comments = '\n'.join(comments)
             
        self.data = {'test_data': self.copy, 'passing_criteria': self.passing_criteria}
      
        print(self.data, comments)

        #self.conn.send("LCD ; Passed:{} Test:4".format(self.passed))
        time.sleep(0.1)
        if self.conn is not None:
            self.conn.send("Done.")
        print('Done.')

        return self.passed, self.data, comments

    def elink_continuity_test(self, comments):

        tx_elink_map = {
            'CLK1': 0,
            'CLK2': 1,
            'CLK3': 2,
            'DAQ0': 4,
            'DAQ1': 5,
            'DAQ2': 6,
            'X_DAQ': 7,
        }

        wagon_wheel_inputs = {
            'TRIG4': 0,
            'DAQ0': 1,
            'DAQ1': 2, 
            '': 3,
        }

        wagon_wheel_outputs = {
            'TRIG0': 3,
            'TRIG1': 2,
            'TRIG2': 1,
            'TRIG3': 0,
        }

        rx_elink_map = {v: k-1 for k, v in self.link_names.items()}
        forbidden_inputs = ['XING', 'TRIG']

        results = {}
        for module in self.wag_info.keys():
            ZERO_MODE = 7
            ONE_MODE = 8

            if module == 'IDResistor': continue

            print('Checking Continuity on {}'.format(module))

            inputs = self.wag_info[module]['Inputs']
            outputs = self.wag_info[module]['Outputs']

            for inp in inputs.values():

                if any([x in inp['Eng_Elink'] for x in forbidden_inputs]): continue

                cur_mod = int(module[-1])
                cur_tx = tx_elink_map[inp['Eng_Elink']]
                cur_cp_input = wagon_wheel_inputs[inp['Mod_Elink']]
                for outp in outputs.values():

                    if 'XING' in outp['Eng_Elink']: continue

                    cur_rx = rx_elink_map[outp['Eng_Elink']]
                    cur_cp_output = wagon_wheel_outputs[outp['Mod_Elink']]

                    cp_setup = [3] * 4
                    cp_setup[cur_cp_output] = cur_cp_input

                    set_crosspoint(cur_mod, cp_setup)
                    self.reset_zeros()

                    self.wagon.set_tx_mode(cur_tx, ONE_MODE)
                    self.wagon.spy(-1, 10, prnt=False)
                    #for i in range(10):
                    #    self.wagon.spy(-1, 10, prnt=False)
                    data = np.array(self.wagon.spy(-1, 100, prnt=False)).reshape(100, -1)[90:, :]
                    data = np.vectorize(hex)(data)
                    #print([hex(d) for d in data[99]])

                    # Require that from 10 spies, at least 8 of them show all ones for the active elink
                    # Same requirement for each of the elinks which should be zero
                    # This resolves issues with noise that cause transient failures

                    cur_result = ('0xff' == data[:, cur_rx].flatten()).sum() > 7

                    zero_cols = [i for i in range(len(data[0])) if i != cur_rx]

                    zero_res = all(('0x0' == data[:, zero_cols].T).astype(int).sum(axis=1) > 7)
                    results[outp['Eng_Elink']] = cur_result and zero_res

                    if not cur_result:
                        comments.append('Engine Elink mapping for {} (Mod {} Elink {}) does not match expected mapping'.format(outp['Eng_Elink'], cur_mod, outp['Mod_Elink']))

                    self.wagon.set_tx_mode(cur_tx, ZERO_MODE)

        results['pass_continuity'] = all([res for res in results.values()])

        return results, comments


    def count_ones(self, hex_str):

        int_rep = int(hex_str, 16)
        bin_rep = bin(int_rep)
        return bin_rep.count("1")

    def reset_zeros(self):

        ZERO_MODE = 7
        for i in range(0,8):
            self.wagon.set_tx_mode(i, ZERO_MODE)

        #for i in range(10):
        #    self.wagon.spy(-1, 10, prnt=False)
        values = np.array(self.wagon.spy(-1, 100, prnt=False)).reshape(100, -1)
        values = [hex(v) for v in values[99]]

        for i_rx, v in enumerate(values):
            ones = self.count_ones(v)
            if ones > 4:
                #print('Need to invert on RX {}'.format(i_rx))
                self.wagon.invert(i_rx)

        for i_rx in range(7, 10):
            self.wagon.set_half_speed(i_rx, mode=1)

    def set_prbs_len(self, prbs_len):
        self.wagon.set_prbs_len(prbs_len)

    def set_prbs(self, shift_map=[False] * 12):
        PRBS = 1
        PRBS_HALFSPEED = 9
        PRBS_HALFSPEED_SHIFT = 10
        for i in range(0,8):
            self.wagon.set_tx_mode(i, PRBS)

        for i in range(0,3):
            if shift_map[i+8]:
                self.wagon.set_tx_mode(i, PRBS_HALFSPEED_SHIFT)
            else:
                self.wagon.set_tx_mode(i, PRBS_HALFSPEED)
        

    def setup_links(self, board_sn, module, clock, set_cp=True):
        self.link_dict, scan_mask, link_names = self.get_links(board_sn, module=module, clock=clock)
        if set_cp:
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
            #print("python3 HwInterface/wagon_set_crosspoint.py --module {} --outputs {} {} {} {}".format(mod, link_dict[mod][0], link_dict[mod][1], link_dict[mod][2], link_dict[mod][3]))
            #os.system("python3 HwInterface/wagon_set_crosspoint.py --module {} --outputs {} {} {} {}".format(mod, link_dict[mod][0], link_dict[mod][1], link_dict[mod][2], link_dict[mod][3]))
            print("Setting crosspoint on module {}: {} {} {} {}".format(mod, link_dict[mod][0], link_dict[mod][1], link_dict[mod][2], link_dict[mod][3]))
            set_crosspoint(mod, link_dict[mod])

        #This should work but there is a weird python version thing going on that I can't solve right now
        '''for mod in range(0,3):
            self.cp.config(mod)
            for ii in range(0,4):
                self.cp.program_output(ii, 2)
        '''

    #def run_test(self, iskip):
    #    return self.wagon.scan(iskip)

    def get_links(self, board_sn="3205WEDBG100001", cfg_path = Path(__file__).parent / "static" / "wagonConfig.json", module=None, clock=True):
        self.subtype = board_sn[3:-6]

        with open(cfg_path, "r") as json_file:
            data = json.load(json_file)
        json_file.close()

        self.wag_info = data[self.subtype]

        link_dict = {}
       
        if module is not None:

            inputs = self.wag_info["Mod{}".format(module)]["Inputs"]
            print("Inputs", inputs)
            outputs = self.wag_info["Mod{}".format(module)]["Outputs"]
            print("Outputs", outputs)

            nin = len(inputs.keys())
            nout = len(outputs.keys())

            if nin == 1:
                link_dict[str(module)] = [list(inputs.keys())[0], list(inputs.keys())[0], list(inputs.keys())[0], list(inputs.keys())[0]]
            elif nin == 2:
                link_dict[str(module)] = [list(inputs.keys())[0], list(inputs.keys())[0], list(inputs.keys())[1], list(inputs.keys())[1]]
            elif nin == 3:
                link_dict[str(module)] = [list(inputs.keys())[0], list(inputs.keys())[0], list(inputs.keys())[1], list(inputs.keys())[1]]
 
        else:

            num_mod = len(self.wag_info.keys()) - 1

            inputs = OrderedDict()
            outputs = OrderedDict()
            for mod in range(1,num_mod+1):
                inputs[mod] = self.wag_info["Mod{}".format(mod)]["Inputs"]
                outputs[mod] = self.wag_info["Mod{}".format(mod)]["Outputs"]

                in_dict = self.wag_info["Mod{}".format(mod)]["Inputs"]

                new_in_dict = {}
                for key,i in in_dict.items():
                    if "XING" not in i["Eng_Elink"] and "TRIG4" not in i["Mod_Elink"]:
                        new_in_dict[key] = i

                out_dict = self.wag_info["Mod{}".format(mod)]["Outputs"]

                print(new_in_dict)
                print(out_dict)

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

        orientation = ""

        if self.subtype[:2] == "WE":
            orientation = "_east"
        elif self.subtype[:2] == "WW":
            orientation = "_west"



        with open(Path(__file__).parent / 'static' /'txrx{}.json'.format(orientation)) as link_file:

            txrx = json.load(link_file)
            
            if module is not None:

                for rx in txrx["RX"]:

                    idx = int(rx["num"])

                    for out in outputs.values():

                        if rx["link"] == out["Eng_Elink"]:
                            
                            scan_mask[idx+1] = module
                            link_names[idx+1] = rx["link"]
            else: 
       
                for mod in range(1,num_mod+1):
     
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
                link_names[8] = "CLK1"

                if num_mod >= 2:
                    scan_mask[9] = 2
                    link_names[9] = "CLK2"

                if num_mod == 3:
                    scan_mask[10] = 3
                    link_names[10] = "CLK3"

        link_file.close()
        print(scan_mask)

        return link_dict, scan_mask, link_names

    def run_long_scan(self, iskip=1, max_bit=1e8, output=""):
        i_bit = 0
        BIT_PER_SCAN = (max_bit + 1) * 8
        self.long_scan = []
        start = datetime.now()
        i = 1
        while i_bit < max_bit:
            if self.conn is not None:
                self.conn.send("Running scan {} of {}".format(i, int(max_bit/BIT_PER_SCAN)+1))
            
            
            # Long process that prints all of the numbers to the server console
            # Approx. 30 seconds to complete
            if self.conn is not None:
                self.conn.send("Wait 1 minute until this stage is complete...")
            current_scan = self.wagon.scan(iskip, self.conn)

            if self.conn is not None:
                self.conn.send("1 minute stage complete")



            self.sum_scans(current_scan)
       
            i_bit += BIT_PER_SCAN

            total_rt = datetime.now() - start
            avg_rt = (datetime.now() - start) / i
            end_time = datetime.now() + avg_rt * (int(max_bit/BIT_PER_SCAN)+1 - i) 
            time_change = timedelta(hours=5)
        
            self.long_scan_to_csv(iskip, output)

            if self.conn is not None:
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
        
        if self.conn is not None:
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
        if self.conn is not None:
            self.conn.send("\n")
            self.conn.send("\n")
            self.conn.send("-------------------------------")
            self.conn.send("Delay Step Size: {}".format(co_info["delayStep"]))
            self.conn.send("-------------------------------")
            self.conn.send("\n")
        for i in range(0,9):
            if self.conn is not None:
                self.conn.send("Printing Crossover info for Link {}".format(i))
                self.conn.send("-----------------------------------")
            co1 = co_info["link{}".format(i)][0]
            co2 = co_info["link{}".format(i)][1]
            if co1 == [] or co2 == []:
                if self.conn is not None:
                    self.conn.send("Oops! Something went wrong on this link, check connections\n")
                continue
            if self.conn is not None:
                self.conn.send("Quiet Period Length: {} ".format(co_info["delayStep"] * (co2[0] - co1[1])))
                self.conn.send("Cross Over Length: {} \n".format(co_info["delayStep"] * max(co1[1] - co1[0], co2[1] - co2[0])))
            

#BERT(args.output, args.iskip, args.nbits, args.module)

if __name__ == '__main__':

    c1, c2 = Pipe()
    sn = sys.argv[1]
    tester = sys.argv[2]

    test_info = {'board_sn': str(sn), 'tester': tester}
    BERT(c1, module = None, clock=True, **test_info) 
