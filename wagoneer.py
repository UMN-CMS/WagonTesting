#!/usr/bin/python
from __future__ import print_function

import sys
import argparse
import uhal

parser=argparse.ArgumentParser(description="TBT1 Wagon Controls")
parser.add_argument('--tx',type=int,default=-1,help='Id of tx to control')
parser.add_argument('--rx',type=int,default=-1,help='Id of rx to control')
parser.add_argument('--txrx',type=int,default=-1,help='Id of txrx to control')
parser.add_argument('--delay',type=int,default=-1,help='Set the rx delay')
parser.add_argument('--invert',action='store_true',help='Invert an rx')
parser.add_argument('--setinvert',action='store_true',help='Set inversion on an RX')
parser.add_argument('--clearinvert',action='store_true',help='Clear inversion on an RX')
parser.add_argument('--mode',type=int,default=None,help='Set the mode of a link')
parser.add_argument('--powerenable', type=int,default=None,help='Set the power enable')
parser.add_argument('--status',action='store_true',help='Print the status')
parser.add_argument('--checktx',action='store_true',help='Check what is being sent on the TX')
parser.add_argument('--spy',type=int,default=-1,help='Spy on a receiver')
parser.add_argument('--ber',action='store_true',help='Run a BER test')
parser.add_argument('--scan',action='store_true',help='Run a BER scan')

args=parser.parse_args()
uhal.setLogLevelTo( uhal.LogLevel.WARNING )

hw=uhal.ConnectionManager("file://connections.xml").getDevice("tbt1_wagon")
wagon=hw.getNode("wagon")

fw=wagon.getNode("FIRMWARE_VERSION").read()
ntx=wagon.getNode("NUMBER_TX").read()
nrx=wagon.getNode("NUMBER_RX").read()
ntxrx=wagon.getNode("NUMBER_TXRX").read()
hw.dispatch()

txmap=["0xF0F0F18","PRBS-15","QUAD-COUNTER","ZERO,COUNT,COUNT,0xFF",
       "COUNT,INV-COUNT,COUNT,INV-COUNT","CLK40","CLK40_SHORTHIGH","ZEROS",
       "ONES","0xCC55CC55","0xCC55CC55","0xCC55CC55",
       "0xCC55CC55","0xCC55CC55","0xCC55CC55","0xCC55CC55"]

if args.status:
   print("Firmware : %04x"%(int(fw)))
   pe=wagon.getNode("CTL.POWER_ENABLE").read()
   hw.dispatch()
   pe=int(pe)
   print(" Power status: %d %d %d"%(((pe>>2)&0x1),((pe>>1)&0x1),((pe>>0)&0x1)))
   print(" TX (%d) Modes: "%(ntx))
   txmode=[]
   for itx in range(0,int(ntx)):
      txmode.append(wagon.getNode("TX%d.MODE"%itx).read())
   hw.dispatch()
   for itx in range(0,int(ntx)):
      print("   %d : %d (%s)"%(itx,txmode[itx],txmap[txmode[itx]]));
   print(" RX (%d) "%(nrx))
   rxdelay=[]
   rxinv=[]
   rxberok=[]
   for irx in range(0,int(nrx)):
      rxdelay.append(wagon.getNode("RX%d.BITDELAY"%irx).read())
      rxinv.append(wagon.getNode("RX%d.INVERT"%irx).read())
      rxberok.append(wagon.getNode("RX%d.BER_LOCK"%irx).read())
   hw.dispatch()
   for irx in range(0,int(nrx)):
      print("   %d : Delay %d %s %s"%(irx,rxdelay[irx],"" if int(rxinv[irx])==0 else "Inverted","" if int(rxberok[irx])==0 else "BEROK"))
   print(" TXRX (%d) "%(ntxrx))
   rxdelay=[]
   rxinv=[]
   istx=[]
   rxberok=[]
   txmode=[]
   for itxrx in range(0,int(ntxrx)):
      txmode.append(wagon.getNode("TX%d.MODE"%(ntx+itxrx)).read())
      istx.append(wagon.getNode("TX%d.TX_ENABLE"%(ntx+itxrx)).read())
      rxdelay.append(wagon.getNode("RX%d.BITDELAY"%(itxrx+nrx)).read())
      rxinv.append(wagon.getNode("RX%d.INVERT"%(itxrx+nrx)).read())
      rxberok.append(wagon.getNode("RX%d.BER_LOCK"%(itxrx+nrx)).read())
   hw.dispatch()
   for itxrx in range(0,int(ntxrx)):
     if int(istx[itxrx])!=0:
        print("   %d : TX mode %d"%(int(txmode[itxrx])))
     else:
        print("   %d : RX Delay %d %s %s"%(itxrx,rxdelay[itxrx],"" if int(rxinv[itxrx])==0 else "Inverted","" if int(rxberok[itxrx])==0 else "BEROK"))


if args.mode is not None and args.tx>=0:
   print("Setting tx %d to mode 0x%04x (%s)"%(args.tx,args.mode,txmap[args.mode]))
   wagon.getNode("TX%d.MODE"%(args.tx)).write(args.mode)
   if (args.mode==1):
      wagon.getNode("TX%d.PRBS_RESET"%(args.tx)).write(1)

if args.checktx and args.tx>=0:
   wagon.getNode("CTL.PEEK_SELECT").write(args.tx)
   sending=wagon.getNode("PEEK_TRANSMIT").read()
   hw.dispatch()
   print("%08x"%(sending))

if args.powerenable is not None:
   wagon.getNode("CTL.POWER_ENABLE").write(int(args.powerenable))

effrx=args.rx
if effrx<0 and args.txrx>=0: effrx=args.txrx+nrx

if effrx>=0 and args.setinvert:
   wagon.getNode("RX%d.INVERT"%(effrx)).write(1)

if effrx>=0 and args.clearinvert:
   wagon.getNode("RX%d.INVERT"%(effrx)).write(0)

if effrx>=0 and args.invert:
   node=wagon.getNode("RX%d.INVERT"%(effrx))
   inow=node.read()
   hw.dispatch()
   if inow==0: node.write(1)
   else: node.write(0)
   hw.dispatch()
   ilater=node.read()
   hw.dispatch()
   print(inow,int(inow),int(ilater))

if effrx>=0 and args.delay>=0:
   wagon.getNode("RX%d.BITDELAY"%effrx).write(args.delay)

def cleanup(val):
   cval=0
   for i in range(0,8):
      if (val&(1<<i))!=0:
         cval=cval|(1<<(7-i))
   return cval

if args.spy>0:
   wagon.getNode("CTL.SPY_RX_START").write(1)
   wagon.getNode("CTL.SPY_RX_START").write(0)
   hw.dispatch()
   vals=[]
   pts=args.spy
   for i in range(0,pts):
     wagon.getNode("RX_SPY_PTR").write(i)
     if effrx>=0:
        vals.append(wagon.getNode("RX%d.SPY"%(effrx)).read())
     else:
        for irx in range(0,nrx):
           vals.append(wagon.getNode("RX%d.SPY"%(irx)).read())
        for itxrx in range(0,ntxrx):
           vals.append(wagon.getNode("RX%d.SPY"%(itxrx+nrx)).read())
   hw.dispatch()
   if effrx>=0:
      for i in range(0,pts):
         print("  %02x"%(vals[i]))
   else:
      for i in range(0,pts):
         for irx in range(0,nrx):
            print(" %02x"%(vals[i*(nrx+ntxrx)+irx]),end="")
         for itxrx in range(0,ntxrx):
            print(" %02x"%(vals[i*(nrx+ntxrx)+nrx+itxrx]),end="")
         print()

def do_ber(doprint):
   wagon.getNode("CTL.BER_CLEAR").write(1)
   wagon.getNode("BER_DURATION").write(int(1e7))
   wagon.getNode("CTL.BER_START").write(1)
   hw.dispatch()
   running=True
   while running:
      xrun=wagon.getNode("BER_RUNNING").read()
      hw.dispatch()
      running=(xrun!=0)
   bers=[]
   wagon.getNode("RX0.BER_COUNT").read() # for test
   for irx in range(0,nrx+ntxrx):
      bers.append(wagon.getNode("RX%d.BER_COUNT"%(irx)).read())
   hw.dispatch()
   if doprint:
      for irx in range(0,nrx+ntxrx):
         print("%2d %d"%(irx,bers[irx]))
   else: return bers

if args.ber:
   do_ber(True)

if args.scan:
   for delay in range(0,425):
      for irx in range(0,nrx+ntxrx):
         wagon.getNode("RX%d.BITDELAY"%(irx)).write(delay)      
      hw.dispatch()
      res=do_ber(False)
      print("%4d"%(delay),end='')
      for irx in range(0,nrx+ntxrx):
         print(" %8d "%(res[irx]),end='')
      print()
         


hw.dispatch()
