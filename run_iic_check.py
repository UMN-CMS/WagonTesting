#!/usr/bin/python3

import HwInterface.iic as iic 
import HwInterface.mcp23009 as mcp23009

from Test import Test 
from math import fabs
from multiprocessing import Pipe
import sys

import time, json
import random
import logging

class IIC_Check(Test):
    
    def __init__(self, conn, board_sn=-1, tester="", module=None):

        self.info_dict = {'name': "IIC Check", 'board_sn': board_sn, 'tester': tester}
        
        # Initialization of a memebr of the Test class will automatically run the test
        # Make sure that all of the arguments necessary are passed as kwargs to the
        # super().__init__() function below
        
        Test.__init__(self, self.iic_check, self.info_dict, conn, numMod=self.get_num_mod(), n_check=10000, module=module)

        if self.conn is not None:
            self.conn.send("Initializing a IIC_Check test")

    def iic_check(self, **kwargs): #ibus=1, n_check=10000):
        
        if self.conn is not None:
            self.conn.send("Beginning the iic_check...")

        self.passing_criteria = {
            'max_errors': 0,
        }

        i2c = iic.iic()
        numMod = kwargs['numMod']
        module = kwargs['module']
        data = {}

        if module is not None:

            passed_list = [False]

            ibus = module + 1
            n_check = kwargs['n_check']

            code = i2c.connect(dev="/dev/i2c-%s"%ibus,addr=0x20)
            if code < 0:
                if self.conn is not None:
                    self.conn.send("UH OH!! Bad connection")

            ctl = mcp23009.mcp23009(i2c,0x20)

            # Setup the pins (0=SIN1, 1=SIN0, 2=SOUT1, 3=SOUT0, 4=CONFIG, 5=LOAD)
            correct = 0
            print("Running I2C check for module {}".format(module))

            for i in range(0, n_check):
                temp = random.randrange(256)

                try:
                    ctl.setByte(temp)
                except:
                    if self.conn is not None:
                        self.conn.send("Unable to connect via I2C. Try reloading the firmware and rerunning. If this problem persists, contact the expert on-hand.")
                        self.conn.send("Hit stop to retest")
                    break

                if temp == ctl.readByte():
                    correct += 1

                if i % 1000 == 0:
                    print("IIC Check Number: {}".format(i))

                    print("Written: {} \nRead: {} \nCorrect: {} \n".format(temp, ctl.readByte(), temp==ctl.readByte()))
                    if self.conn is not None:
                        self.conn.send("IIC Check Number: {}".format(i))
                        self.conn.send("Written: {} \nRead: {} \nCorrect: {} \n".format(temp, ctl.readByte(), temp==ctl.readByte()))
            ctl.setByte(0)

            data["num_iic_checks_mod{}".format(i)] = n_check
            data["num_iic_correct_mod{}".format(ibus)] = correct

            if self.conn is not None:
                self.conn.send("Total correct: {}".format(correct))

            if correct == n_check:
                passed_list[0] = True


        else:

            passed_list = [False] * numMod
            comments = []

            for ib in range(0,numMod):

                ibus = ib + 2
                n_check = kwargs['n_check']

                try:
                    code = i2c.connect(dev="/dev/i2c-%s"%ibus,addr=0x20)
                except:
                    print("Bad I2C connection")
                    if self.conn is not None:
                        self.conn.send("Unable to connect via I2C. Try reloading the firmware and rerunning. \nIf this problem persists, contact the expert on-hand.")
                        self.conn.send("Hit stop to retest")

                    comments.append('Bad connection on module {}'.format(ib))

                if code < 0:
                    if self.conn is not None:
                        self.conn.send("UH OH!! Bad connection")

                ctl = mcp23009.mcp23009(i2c,0x20)

                # Setup the pins (0=SIN1, 1=SIN0, 2=SOUT1, 3=SOUT0, 4=CONFIG, 5=LOAD)
                correct = 0
                print("Running I2C check for module {}".format(ibus-1))
                for i in range(0, n_check):
                    temp = random.randrange(256)

                    try:
                        ctl.setByte(temp)
                    except:
                        print("First read write failed")
                        if self.conn is not None:
                            self.conn.send("Unable to connect via I2C. Try reloading the firmware and rerunning. If this problem persists, contact the expert on-hand.")
                            self.conn.send("Hit stop to retest")
                        break
                        

                    if temp == ctl.readByte():
                        correct += 1

                    if i % 1000 == 0:
                        print("IIC Check Number: {}".format(i))
                        #self.conn.send("LCD ; Percent:{:3f} Test:3".format((ib * n_check + i)/float(numMod * n_check)))

                        print("Written: {} \nRead: {} \nCorrect: {} \n".format(temp, ctl.readByte(), temp==ctl.readByte()))
                        if self.conn is not None:
                            self.conn.send("IIC Check Number: {}".format(i))
                            self.conn.send("Written: {} \nRead: {} \nCorrect: {} \n".format(temp, ctl.readByte(), temp==ctl.readByte()))
                try:
                    ctl.setByte(0)
                except:
                    print("Last write failed")
                
                data["num_iic_checks_mod{}".format(ib)] = n_check
                data["num_iic_correct_mod{}".format(ib)] = correct

                if self.conn is not None:
                    self.conn.send("Total correct: {}".format(correct))

                if n_check - correct > self.passing_criteria['max_errors']:
                    passed_list[ib] = True
                else:
                    comments.append('Number of incorrect bytes on module {}: {}'.format(ib, n_check - correct))

        passed = all(passed_list)
       
        comments = '\n'.join(comments)

        data = {'test_data': data, 'passing_criteria': self.passing_criteria}

        #self.conn.send("LCD ; Passed:{} Test:3".format(passed))
        i2c.close()
        if self.conn is not None:
            self.conn.send("Done.")
        print('Done.')
        #self.conn.send({"pass": passed, "data": data})
        print({"pass": passed, "data": data})
        return passed, data, comments

    def get_num_mod(self, cfg_path = "/home/HGCAL_dev/sw/WagonTesting/static/wagonConfig.json"):
        self.subtype = self.info_dict["board_sn"][3:-6]

        with open(cfg_path, "r") as json_file:
            data = json.load(json_file)
        json_file.close()

        return len(data[self.subtype].keys()) - 1


if __name__ == '__main__':

    c1, c2 = Pipe()
    sn = sys.argv[1]
    tester = sys.argv[2]

    test_info = {'board_sn': str(sn), 'tester': tester}
    IIC_Check(c1, module = None, **test_info)
