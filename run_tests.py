#!/usr/bin/python

from wagon_rtd import gen_resist_test
from wagon_rtd import id_resist_test
from run_iic_check import IIC_Check
from run_bert import BERT
from multiprocessing import Pipe


print("Starting")
c1, c2 = Pipe()

test_info = {'board_sn': '3205WEDBG199999', 'tester': "Bryan"}

#print("Running General Resistance")
#gen_resist_test(c1, **test_info)
print("Running ID Resistance Check")
id_resist_test(c1, **test_info)
#print("Running IIC Check")
#IIC_Check(c1, **test_info)
#print("Running BERT")
#BERT(c1, **test_info) 

print("All tests done")
