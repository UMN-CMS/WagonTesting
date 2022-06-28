#!/usr/bin/python3
import iic 
import mcp23009
from math import fabs

import argparse
import time

parser=argparse.ArgumentParser(description="Wagon tester setup crosspoint")
parser.add_argument('--module',type=int,default=1,help='Which module to set up')
parser.add_argument('--outputs',type=int,nargs=4,help='List of inputs for the four outputs')
parser.add_argument('--all',type=int,default=-1,help='Set all to value')
parser.add_argument('--status',action='store_true',help='Get status of crosspoint')

args=parser.parse_args()

iic = iic.iic()

ibus = args.module 

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


if args.outputs is not None:
  for ii in range(0,4):
#    print(ii)
    program_output(ii,args.outputs[ii])
#    time.sleep(1)

if args.all>=0:
  ctl.setMany([0,1],[(args.all&0x1),(args.all&0x2)])
  ctl.setMany([4,5],[1,1])

if args.status:
    reg_vals = ctl.readAllBytes() 
    for i,val in enumerate(reg_vals):
        print("Register {0}: {1:08b}".format(i,val))

iic.close()
