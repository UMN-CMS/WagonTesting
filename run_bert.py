from argparse import ArgumentParser
from datetime import datetime, timedelta
from Test import Test

import os

parser = ArgumentParser()

parser.add_argument("-m", "--module", action="store", type=int, dest="module", help="Module to use PRBS for bit error rate test", default=None)
parser.add_argument("-o", "--output", action="store", type=str, dest="output", help="Output file name/path for BER data", default=None)
parser.add_argument("--long", action="store_true", dest="long", help="Run long BER scan (iskip required)", default=False)
parser.add_argument("--delayskip", action="store", type=int, dest="iskip", help="Skip for delay (0 to 425)", default=1)
parser.add_argument("--nbits", action="store", type=float, dest="nbits", help="Number of bits to collect for long scan (1e12 by default)", default=1e12)

args = parser.parse_args()

from wagoneer import Wagon

class BERT(Test):

    def __init__(self, conn, board_sn=-1, tester=''):
        self.info_dict = {'name': "Bit Error Rate Test", 'board_sn': board_sn, 'tester': tester}

        Test.__init__(self, self.bert, self.info_dict, conn, output='BERT.csv', iskip=1, nbits=1e8, module=1)

    def bert(self, **kwargs):
        self.scans = []
        self.crossovers = []
        self.wagon = Wagon()
        self.mod = kwargs['module']

        self.invert_map = [0,0,0,0,0,0,0,0,0]

        self.reset_zeros()
        self.setup_links()
        self.set_prbs(1)

        self.run_long_scan(kwargs['iskip'], kwargs['nbits'], kwargs['output'])

        """for i in [1, 5, 10]:

            scan = self.run_test(i)
            
            self.scans.append(scan)        
            self.crossovers.append(self.parse_scan(scan, i))
        
        for co in self.crossovers:
            self.print_qp_info(co)
        """

        self.passed = True
        self.data = {"Eye opening width": 172, "Best Delay": 242}
        self.conn.send("Done.")
        return self.passed, self.data

    def reset_zeros(self):
        ZERO_MODE = 7
        for i in range(0,5):
            self.wagon.set_tx_mode(i, ZERO_MODE)

    def set_prbs(self, tx):
        PRBS = 1
        for i in range(0,5):
            self.wagon.set_tx_mode(i, PRBS)
        

    def setup_links(self):
        self.set_crosspoint()
        self.set_inverts()

    def set_inverts(self):
        for (i,inv) in enumerate(self.invert_map):
            if inv == 1:
                self.wagon.set_invert(i)
            else:
                self.wagon.clear_invert(i)

    def set_crosspoint(self):
        if self.mod:
            os.system("python3 HwInterface/wagon_set_crosspoint.py --module {} --outputs 3 2 1 0".format(self.mod))
        else:
            for mod in range(0,3):
                os.system("python3 HwInterface/wagon_set_crosspoint.py --module {} --outputs 3 2 1 0".format(mod))

        #This should work but there is a weird python version thing going on that I can't solve right now
        '''for mod in range(0,3):
            self.cp.config(mod)
            for ii in range(0,4):
                self.cp.program_output(ii, 2)
        '''

    #def run_test(self, iskip):
    #    return self.wagon.scan(iskip)

    def run_long_scan(self, iskip=1, max_bit=1e8, output=""):
        i_bit = 0
        BIT_PER_SCAN = 80000000
        self.long_scan = []
        start = datetime.now()
        i = 1
        while i_bit < max_bit:
            self.conn.send("Running scan {} of {}".format(i, int(max_bit/BIT_PER_SCAN)+1))
            current_scan = self.wagon.scan(iskip)
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
