#!/usr/bin/python3

from run_iic_check import IIC_Check
from run_bert import BERT

test_info = {'board_sn': 32031100299999, 'tester': "Bryan"}

print("Running IIC Check")
IIC_Check(**test_info)
print("Running BERT")
BERT(**test_info) 

print("All tests done")
