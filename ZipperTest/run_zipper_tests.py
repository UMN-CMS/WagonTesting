#!/usr/bin/python3

import multiprocessing as mp

from zip_bert_test import ZipBERT
from zip_res_test import ZipResTest

c1, c2 = None, None

board_sn = '1234'
tester = 'Bryan'

print('Running Zipper Resistance Measurement')
ZipResTest(c1, board_sn=board_sn, tester=tester)
print('Running Zipper Bit Error Rate')
ZipBERT(c1, board_sn=board_sn, tester=tester)

