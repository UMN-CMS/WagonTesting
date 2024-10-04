#!/usr/bin/python3
from pathlib import Path
import sys
sys.path.append(str(Path(__file__).parent))
print(sys.path)

import iic as i2c
import mcp23009
from math import fabs

import time

def set_crosspoint(module, outputs):

    outputs = [int(x) for x in outputs]

    iic = i2c.iic()

    ibus = int(module) + 1

    iic.connect(dev="/dev/i2c-%s"%ibus,addr=0x20)

    ctl = mcp23009.mcp23009(iic,0x20)

    # Setup the pins (0=SIN1, 1=SIN0, 2=SOUT1, 3=SOUT0, 4=CONFIG, 5=LOAD)
    for ibit in range(0,8):
       ctl.setAsOutput(ibit)

    def program_output(nin, nout):
       ctl.setMany([4,5,6,7],[0,0,0,0])
       ctl.setMany([0,1,2,3],[(nin&0x2),(nin&0x1),(nout&0x2),(nout&0x1)])
       ctl.setMany([4,5],[1,0])
       ctl.setMany([4,5],[0,0])
       ctl.setMany([4,5],[0,1])
       ctl.setMany([4,5],[0,0])

    for ii in range(0,4):
        program_output(outputs[ii],ii)

    iic.close()
