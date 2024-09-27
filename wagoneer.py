#!/usr/bin/python
from __future__ import print_function

import sys
print(sys.version)
import argparse
import uhal

class Wagon:
    
    def __init__(self):
        self.txmap = ["0xF0F0F18","PRBS-15","QUAD-COUNTER","ZERO,COUNT,COUNT,0xFF",
           "COUNT,INV-COUNT,COUNT,INV-COUNT","CLK40","CLK40_SHORTHIGH","ZEROS",
           "ONES","0xCC55CC55","0xCC55CC55","0xCC55CC55",
           "0xCC55CC55","0xCC55CC55","0xCC55CC55","0xCC55CC55"]

        self.config()

    def config(self):
        uhal.setLogLevelTo( uhal.LogLevel.WARNING )

        self.hw=uhal.ConnectionManager("file:///opt/cms-hgcal-firmware/hgc-test-systems/active/uHAL_xml/connections.xml").getDevice("TOP")
        self.wagon=self.hw.getNode("ber-link-tester-0")

        self.fw = self.wagon.getNode("FIRMWARE_VERSION").read()
        self.ntx=self.wagon.getNode("STATUS.N_OUTPUTS").read()
        self.nrx=self.wagon.getNode("STATUS.N_INPUTS").read()
        self.ntxrx=self.wagon.getNode("STATUS.N_INOUTS").read()
        self.hw.dispatch()

    def status(self):
        print("Firmware : %04x"%(int(self.fw)))

        half_speed = self.wagon.getNode("CTL.LINKS_HALF_SPEED").read()
        print("="*30)
        print("Running TXs at half speed: %s" % (half_speed))
        print("="*30)

        #pe = self.wagon.getNode("CTL.POWER_ENABLE").read()
        #self.hw.dispatch()

        #self.pe = int(pe)

        #print(" Power status: %d %d %d"%(((self.pe>>2)&0x1),((self.pe>>1)&0x1),((self.pe>>0)&0x1)))
        #print(" Output (%d) Modes: "%(self.ntx))

        self.txmode = []
        for itx in range(0,int(self.ntx)):
            self.txmode.append(self.wagon.getNode("OUTPUT_%d_MODE"%itx).read())
        self.hw.dispatch()

        for itx in range(0,int(self.ntx)):
            print("   %d : %d (%s)"%(itx,self.txmode[itx],self.txmap[self.txmode[itx]]));
        print(" Input (%d) "%(self.nrx))

        self.rxdelay=[]
        self.rxinv=[]
        self.rxberok=[]
        self.rxbitslip=[]
        for irx in range(0,int(self.nrx)):
            self.rxdelay.append(self.wagon.getNode("INPUT_%d.CAPTURE_DELAY"%irx).read())
            self.rxinv.append(self.wagon.getNode("INPUT_%d.INVERT"%irx).read())
            self.rxberok.append(self.wagon.getNode("INPUT_%d.BER_LOCK"%irx).read())
            self.rxbitslip.append(self.wagon.getNode("INPUT_%d.BITSLIP"%irx).read())
        self.hw.dispatch()

        for irx in range(0,int(self.nrx)):
            print("   %d : Delay %d Bitslip %d %s %s"%(irx,self.rxdelay[irx],self.rxbitslip[irx],"" if int(self.rxinv[irx])==0 else "Inverted","" if int(self.rxberok[irx])==0 else "BEROK"))

        print(" Inouts (%d) "%(self.ntxrx))
        self.rxdelay=[]
        self.rxinv=[]
        self.istx=[]
        self.rxberok=[]
        self.txmode=[]
        for itxrx in range(0,int(self.ntxrx)):
            self.txmode.append(self.wagon.getNode("OUTPUT_%d_MODE"%(self.ntx+itxrx)).read())
            #self.istx.append(self.wagon.getNode("OUTPUT_%d.TX_ENABLE"%(self.ntx+itxrx)).read())
            self.rxdelay.append(self.wagon.getNode("INPUT_%d.CAPTURE_DELAY"%(itxrx+self.nrx)).read())
            self.rxinv.append(self.wagon.getNode("INPUT_%d.INVERT"%(itxrx+self.nrx)).read())
            self.rxberok.append(self.wagon.getNode("INPUT_%d.BER_LOCK"%(itxrx+self.nrx)).read())
        self.hw.dispatch()

        for itxrx in range(0,int(self.ntxrx)):
            #if int(self.istx[itxrx])!=0:
            print("   %d : Output mode %d (%s)"%(itxrx, int(self.txmode[itxrx]),self.txmap[self.txmode[itxrx]]))
            #else:
            print("   %d : Input Delay %d %s %s"%(itxrx,self.rxdelay[itxrx],"" if int(self.rxinv[itxrx])==0 else "Inverted","" if int(self.rxberok[itxrx])==0 else "BEROK"))

        self.reset_general = self.wagon.getNode("CTL.RESET_GENERAL").read()
        self.reset_rx = self.wagon.getNode("CTL.RESET_RX").read()
        self.spy_rx_start = self.wagon.getNode("CTL.SPY_RX_START").read()
        self.clear_prbs = self.wagon.getNode("CTL.CLEAR_PRBS").read()
        self.start_prbs = self.wagon.getNode("CTL.START_PRBS").read()

        self.hw.dispatch()

        print("\nControl Registers:")
        print("------------------")
        print("Reset General: {}".format(self.reset_general))
        print("Reset RX: {}".format(self.reset_rx))
        print("Spy RX Start: {}".format(self.spy_rx_start))
        print("Clear PRBS: {}".format(self.clear_prbs))
        print("Start PRBS: {}".format(self.start_prbs))

        self.rx_spy_ptr = self.wagon.getNode("RX_SPY_PTR").read()
        self.prbs_len = self.wagon.getNode("PRBS_LEN_BX").read()

        self.hw.dispatch()

        print("\nOther Registers:")
        print("----------------")
        print("RX Spy Pointer: {}".format(self.rx_spy_ptr))
        print("PRBS Length (BX): {}".format(self.prbs_len))

    def toggle_speed(self):
        current = self.wagon.getNode("CTL.LINKS_HALF_SPEED").read()
        if current == 1:
            print("Setting links to full speed")
        elif current == 0:
            print("Setting links to half speed")
        self.wagon.getNode("CTL.LINKS_HALF_SPEED").write(abs(1-current))

    def set_tx_mode(self, tx, mode):
        print("Setting output %d to mode 0x%04x (%s)"%(tx,mode,self.txmap[mode]))
        #if mode==1:
        #self.wagon.getNode("CTL.CLEAR_PRBS").write(1)
        #self.wagon.getNode("CTL.CLEAR_PRBS").write(0)
        #self.wagon.getNode("CTL.START_PRBS").write(1)
        #self.wagon.getNode("CTL.START_PRBS").write(0)
        #self.hw.dispatch()
        self.wagon.getNode("OUTPUT_%d_MODE"%(tx)).write(mode)
        test = self.wagon.getNode("OUTPUT_%d_MODE"%(tx)).read()
        self.hw.dispatch()
        print("OUTPUT MODE: ", test)
        
    def check_tx(self, tx):
        self.wagon.getNode("CTL.PEEK_SELECT").write(tx)
        sending=self.wagon.getNode("PEEK_TRANSMIT").read()
        self.hw.dispatch()
        print("%08x"%(sending))

    def power_enable(self, powerenable):
        self.wagon.getNode("CTL.POWER_ENABLE").write(int(powerenable))

    def set_invert(self, effrx):
        self.wagon.getNode("INPUT_%d.INVERT"%(effrx)).write(1)

    def clear_invert(self, effrx):
        self.wagon.getNode("INPUT_%d.INVERT"%(effrx)).write(0)

    def invert(self, effrx):
        node = self.wagon.getNode("INPUT_%d.INVERT"%(effrx))
        inow = node.read()
        self.hw.dispatch()
        if inow == 0: node.write(1)
        else: node.write(0)
        self.hw.dispatch()
        ilater = node.read()
        self.hw.dispatch()
        print(inow,int(inow),int(ilater))
    
    def set_delay(self, effrx, delay):
        self.wagon.getNode("INPUT_%d.CAPTURE_DELAY"%effrx).write(delay)
        self.hw.dispatch()
   
    def set_bitslip(self, effrx, bitslip):
        self.wagon.getNode("INPUT_%d.BITSLIP"%effrx).write(bitslip)
        self.hw.dispatch()
 
    def spy(self, effrx, spy):
        self.wagon.getNode("CTL.SPY_RX_START").write(1)
        self.wagon.getNode("CTL.SPY_RX_START").write(0)
        self.hw.dispatch()
        vals=[]
        pts=spy
        for i in range(0,pts):
            self.wagon.getNode("RX_SPY_PTR").write(i)
            if effrx>=0:
                vals.append(self.wagon.getNode("INPUT_%d.SPY"%(effrx)).read())
            else:
                for irx in range(0,self.nrx):
                   vals.append(self.wagon.getNode("INPUT_%d.SPY"%(irx)).read())
                for itxrx in range(0,self.ntxrx):
                   vals.append(self.wagon.getNode("INPUT_%d.SPY"%(itxrx+self.nrx)).read())
        self.hw.dispatch()
        if effrx>=0:
            for i in range(0,pts):
                print("  %02x"%(vals[i]))
        else:
            for i in range(0,pts):
                for irx in range(0,self.nrx):
                    print(" %02x"%(vals[i*(self.nrx+self.ntxrx)+irx]),end="")
                for itxrx in range(0,self.ntxrx):
                    print(" %02x"%(vals[i*(self.nrx+self.ntxrx)+self.nrx+itxrx]),end="")
                print()

    def do_ber(self, doprint):
        self.wagon.getNode("CTL.START_PRBS").write(1)
        self.hw.dispatch()
        running=True
        while running:
            xrun = self.wagon.getNode("STATUS.PRBS_BUSY").read()
            self.hw.dispatch()
            running = (xrun != 0)
        bers=[]
        self.wagon.getNode("INPUT_0.BER_ERROR_COUNT").read() # for test
        for irx in range(0,self.nrx+self.ntxrx):
            bers.append(self.wagon.getNode("INPUT_%d.BER_ERROR_COUNT"%(irx)).read())
        self.hw.dispatch()
        if doprint:
            for irx in range(0,self.nrx+self.ntxrx):
                print("%2d %d"%(irx,bers[irx]))
        else: return bers

    def scan(self, iskip=5, conn=None):
        scan = [] 
        for delay in range(0,511, iskip):

            if conn is not None:
                conn.send("Scanning BERT phase {}".format(delay))
            bers = []
            for irx in range(0,self.nrx+self.ntxrx):
                self.wagon.getNode("INPUT_%d.CAPTURE_DELAY"%(irx)).write(delay)      
            self.wagon.getNode("CTL.RESET_RX").write(1)
            self.hw.dispatch()
            res=self.do_ber(False)
            print("%4d"%(delay),end='')
            for irx in range(0,self.nrx+self.ntxrx):
                bers.append(int("%8d"%res[irx]))
                print(" %9d "%(res[irx]),end='')
            print()
            scan.append(bers)

        return list(map(list, zip(*scan)))

    def clear_prbs(self):
        self.wagon.getNode("CTL.CLEAR_PRBS").write(1)
        self.hw.dispatch()

    def switch_prbs(self):
        status = self.wagon.getNode("CTL.START_PRBS").read()
        self.hw.dispatch()

        if status == 0:
            print("Turning on PRBS")
            self.wagon.getNode("CTL.START_PRBS").write(1)
        else:
            print("Turning off PRBS")
            self.wagon.getNode("CTL.START_PRBS").write(0)
            
        self.hw.dispatch()

    def set_prbs_len(self, val):
        current = self.wagon.getNode("PRBS_LEN_BX").read()
        self.hw.dispatch()

        print("Current PRBS Len: {}".format(current))

        self.wagon.getNode("PRBS_LEN_BX").write(val)
        self.hw.dispatch()

        current = self.wagon.getNode("PRBS_LEN_BX").read()
        self.hw.dispatch()

        print("New PRBS Len: {}".format(current))

    def dispatch(self):
        self.hw.dispatch()

    def reset(self):
        self.wagon.getNode("CTL.RESET_GENERAL").read()
        self.dispatch()

def cleanup(val):
   cval=0
   for i in range(0,8):
      if (val&(1<<i))!=0:
         cval=cval|(1<<(7-i))
   return cval

if __name__ == "__main__":
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
    parser.add_argument('--reset',action='store_true',help='General reset')
    parser.add_argument('--prbs',action='store_true',help='Switch PRBS on/off')
    parser.add_argument('--prbsclear',action='store_true',help='Clear PRBS')
    parser.add_argument('--prbslen',type=int,default=-1,help='set PRBS Length')
    parser.add_argument('--bitslip',type=int,default=-1,help='set bit slip')
    parser.add_argument('--togglespeed',action='store_true',help='toggle speed of links')

    args=parser.parse_args()

    wagoneer = Wagon()

    if args.prbs:
        wagoneer.switch_prbs()

    if args.status:
        wagoneer.status() 

    if args.reset:
        wagoneer.reset()

    if args.mode is not None and args.tx>=0:
        wagoneer.set_tx_mode(args.tx, args.mode)

    if args.checktx and args.tx>=0:
        wagoneer.check_tx(args.tx)

    if args.powerenable is not None:
        wagoneer.power_enable(args.powerenable)

    effrx=args.rx
    if effrx<0 and args.txrx>=0: 
        effrx=args.txrx+wagoneer.nrx

    if effrx>=0 and args.setinvert:
        wagoneer.set_invert(effrx)

    if effrx>=0 and args.clearinvert:
        wagoneer.clear_invert(effrx)

    if effrx>=0 and args.invert:
        wagoneer.invert(effrx)

    if effrx>=0 and args.delay>=0:
        wagoneer.set_delay(effrx, args.delay)

    if effrx>=0 and args.bitslip>=0:
        wagoneer.set_bitslip(effrx, args.bitslip)

    if args.spy>0:
        wagoneer.spy(effrx, args.spy)

    if args.ber:
        wagoneer.do_ber(True)

    if args.scan:
        wagoneer.scan(1)

    if args.prbslen > 0:
        wagoneer.set_prbs_len(args.prbslen)
    
    if args.prbsclear:
        wagoneer.clear_prbs()

    if args.togglespeed:
        wagoneer.toggle_speed()

    #wagoneer.dispatch()
