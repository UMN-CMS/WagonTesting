#!/usr/bin/python3

from pathlib import Path
import sys
sys.path.append(str(Path.cwd().parent.resolve()))

from Test import Test
from wagon_rtd import id_resist_test

class ZipResTest:

    def __init__(self, conn, board_sn=-1, tester=""):
        
        name = 'Zipper Resistance Measurement'

        res_test = id_resist_test(
            conn,
            board_sn = board_sn, 
            tester = tester,
            name = name,
        )

if __name__ == '__main__':

    from multiprocessing import Pipe

    conn, _ = Pipe()

    tester = 'Bryan'
    board_sn = '320ZPHSNO010001'

    ZipResTest(conn, board_sn=board_sn, tester=tester)


