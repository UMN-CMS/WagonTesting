from pathlib import Path
import sys
sys.path.append(str(Path.cwd().parent.resolve()))

import numpy as np
from Test import Test
from wagoneer import Wagon
from fit_bert import FitData

class ZipBERT(Test):

    def __init__(self, conn, board_sn=-1, tester='', output=None):

        self.info_dict = {
            'name': 'Zipper Bit Error Rate', 
            'board_sn': board_sn,
            'tester': tester
        }

        self.conn = conn

        # Dict which maps TXs to RXs
        # Used to determine which links to run the fit on 
        self.txrx_map = {
            0: 7,
            1: 8,
            2: 9,
        }

        self.PRBS_MODE = 1
        self.ZERO_MODE = 7

        self.prbs_len = 30000000
        self.iskip = 1

        if output == None:
            self.output = Path.home() / "ZipBERT.csv"
        else:
            self.output = output

        Test.__init__(self, self.bert, self.info_dict, conn, output=self.output)

    def smart_zero(self):

        # Send zeros the check for zeros
        # If not seen, invert the RX
        for key, val in self.txrx_map.items():

            self.wagon.set_tx_mode(key, self.ZERO_MODE)

            data = np.array(self.wagon.spy(val, 100, prnt=False)).reshape(100)
            if '0xff' == hex(data[99]):
                self.wagon.invert(val)
                print(f'Inverting RX {val}')


    def initialize(self):

        self.smart_zero()

        self.wagon.set_prbs_len(self.prbs_len)

        for i in self.txrx_map.keys():

            self.wagon.set_tx_mode(i, self.PRBS_MODE)


    def save_scan(self, scan):

        to_csv = map(list, zip(*scan))

        with open(self.output, 'w') as f:
            for (i, line) in enumerate(to_csv):
                out = "{0: <8}".format(i)
                for word in line:
                    out += "{0: <13}".format(word)
                f.write(out + "\n")
        f.close()

    def bert(self, **kwargs):

        self.passing_criteria = {
            'min_fit_eo': 0.5,
            'min_data_eo': 0.0,
            'max_fit_qual': 0.01,
        }

        self.wagon = Wagon() 

        self.initialize()

        current_scan = self.wagon.scan(self.iskip, self.conn)
        self.save_scan(current_scan)

        # RXs are one indexed just based on how the csv is produced
        self.scan_mask = [x-1 in self.txrx_map.values() for x in range(11)]

        fitdata = FitData(self.output, self.conn, scan_mask=self.scan_mask, iskip=self.iskip, prbs_len=self.prbs_len)

        results = fitdata.get_results()
       
        link_map = ['CLK0', 'CLK1', 'CLK2']

        comments = []
        self.passed = True

        for i,r in enumerate(results):
            
            if r is None:
                print("Bad scan found on CLK{}".format(i))
                comments.append('Malformed scan for CLK{}'.format(i))
                continue
            r['passed'] = True
            
            if not (r["Fit Eye Opening"] >= self.passing_criteria['min_fit_eo'] and r["Data Eye Opening"] > self.passing_criteria['min_data_eo'] and r['Fit Quality'] <= self.passing_criteria['max_fit_qual']):
                r['passed'] = False
                self.passed = False
                if not r["Fit Eye Opening"] >= self.passing_criteria['min_fit_eo']:
                    comments.append('Fit eye opening smaller than {} for CLK{}'.format(self.passing_criteria['min_fit_eo'], i))
                if not r["Data Eye Opening"] > self.passing_criteria['min_data_eo']:
                    comments.append('Number of bit errors always greater than zero for CLK{}'.format(i))
                if not r['Fit Quality'] <= self.passing_criteria['max_fit_qual']:
                    comments.append('Fit quality requirement failed for CLK{}'.format(i))

                del r['Module']
                r['Eng_Elink'] = f'CLK{i}'

        comments = '\n'.join(comments)

        print(results)

        return self.passed, results, comments
        
       
if __name__ == '__main__':

    ZipBERT(None, "1234", 'Bryan')
