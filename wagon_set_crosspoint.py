#!/usr/bin/python3
import gbtsca_bus
import pca9575
from math import fabs

import argparse
import time

parser=argparse.ArgumentParser(description="Wagon tester setup crosspoint")
parser.add_argument('--module',type=int,default=1,help='Which module to set up')
parser.add_argument('--outputs',type=int,nargs=4,help='List of inputs for the four outputs')
parser.add_argument('--all',type=int,default=-1,help='Set all to value')

args=parser.parse_args()

gbtsca_bus.init_gbtsca("file://connections.xml")

if args.module==0:
  ibus=13
if args.module==1:
  ibus=10
if args.module==2:
  ibus=2

gbtsca_bus.gbtsca.enableI2C((1<<ibus))
ctl = pca9575.pca9575(gbtsca_bus.scabus(ibus),0x20)

# Setup the pins (0=SIN0, 1=SIN1, 2=SOUT0, 3=SOUT1, 4=LOAD, 5=CONFIG)
for ibit in range(0,8):
   ctl.setAsOutput(ibit)

def program_output(nin, nout):
   ctl.setMany([4,5,6,7],[0,0,0,0])
   ctl.setMany([2,3,0,1],[(nin&0x1),(nin&0x2),(nout&0x1),(nout&0x2)])
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


