#!/usr/bin/python3
import iic 
import mcp23009

from test import Test 
from math import fabs

import time
import random
import logging

class IIC_Check(Test):
    
    def __init__(self, board_sn=-1, tester=""):
        self.info_dict = {'name': "IIC Check", 'board_sn': board_sn, 'tester': tester}
        
        # Initialization of a memebr of the Test class will automatically run the test
        # Make sure that all of the arguments necessary are passed as kwargs to the
        # super().__init__() function below
        Test.__init__(self, self.iic_check, self.info_dict, ibus=1, n_check=10000)

    def iic_check(self, **kwargs): #ibus=1, n_check=10000):
        i2c = iic.iic()

        ibus = kwargs['ibus'] 
        n_check = kwargs['n_check']

        code = i2c.connect(dev="/dev/i2c-%s"%ibus,addr=0x20)
        if code < 0:
            print("Bad connection")

        ctl = mcp23009.mcp23009(i2c,0x20)

        # Setup the pins (0=SIN1, 1=SIN0, 2=SOUT1, 3=SOUT0, 4=CONFIG, 5=LOAD)
        correct = 0
        for i in range(0, n_check):
            temp = random.randrange(256)

            ctl.setByte(temp)

            if temp == ctl.readByte():
                correct += 1

            if i % 1000 == 0:
                print("IIC Check Number: {}".format(i))
                print("Written: {} \nRead: {} \nCorrect: {} \n".format(temp, ctl.readByte(), temp==ctl.readByte()))

        print("Total correct: {}".format(correct))

        passed = False
        if correct == n_check:
            passed = True

        data = {"num_iic_checks": n_check, "num_iic_correct": correct}

        i2c.close()

        return passed, data

