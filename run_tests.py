#!/usr/bin/python

import sys

from wagon_rtd import gen_resist_test
from wagon_rtd import id_resist_test
from run_iic_check import IIC_Check
from run_bert import BERT
from multiprocessing import Pipe
from run_adc_self_test import ADC

print("Starting")
c1, c2 = Pipe()

def run_tests(test_info):
   
    module = None
    print("Running ADC Self Test")
    ADC(c1, **test_info)
    print("Running General Resistance")
    gen_resist_test(c1, module = module, **test_info)
    print("Running ID Resistance Check")
    id_resist_test(c1, **test_info)
    print("Running IIC Check")
    IIC_Check(c1, module = module, **test_info)
    print("Running BERT")
    BERT(c1, module = module, clock=True, **test_info) 

#sn = sys.argv[1]

#test_info = {'board_sn': str(sn), 'tester': "Jocie"}
test_info = {'board_sn': '320WE11A1000001', 'tester': "Bryan"}
run_tests(test_info)

#print("Running tests for east wagon")
#test_info = {'board_sn': '3205WEDBG199999', 'tester': "Bryan"}
#run_tests(test_info)
