#!/usr/bin/python

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
   # print("Running General Resistance")
   # gen_resist_test(c1, module = module, **test_info)
   # print("Running ID Resistance Check")
    #id_resist_test(c1, **test_info)
    print("Running IIC Check")
    IIC_Check(c1, module = module, **test_info)
    #print("Running BERT")
    #BERT(c1, module = module, clock=True, **test_info) 
    #ADC(c1, **test_info)
    #print("All tests done")

test_info = {'board_sn': '320WE10A1000004', 'tester': "Bryan"}
#test_info = {'board_sn': '320WW10A1000008', 'tester': "Seth"}
run_tests(test_info)

#print("Running tests for east wagon")
#test_info = {'board_sn': '3205WEDBG199999', 'tester': "Bryan"}
#run_tests(test_info)
