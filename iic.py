#!/usr/bin/python

import struct, fcntl, os, sys

def determineDefaults():
    # see if this is a Raspberry Pi, in which case the defaults are clear
    with open("/proc/cpuinfo") as f:
        for lines in f:
            if lines.find("Model")>=0 and lines.find("Raspberry")>=0:
                return {'protocol':'I2C','device':'/dev/i2c-1'}
    # look for a connections file in the project-standard location
    if os.path.exists("/opt/cms-hgcal-firmware/hgc-test-systems/active/uHAL_xml"):
        return {'protocol':'ICEC', 'connections': "file:///opt/cms-hgcal-firmware/hgc-test-systems/active/uHAL_xml/connections.xml", 'device':'TOP'}
    return {'protocol':'ICEC', 'connections': "file://connections.xml", 'device':'zcu_v3' }

class I2CException(Exception):
    """Raised when an I2C error was encountered"""
    pass

class iic:

    def __init__(self, protocol="AUTO", i2c_addr=0x70, indirect_path=None, lbus=0,
    icec_type="IC", icec_addr=0x70):
        self.fd = None
        self.hw = None
        self.i2c_speed = 0x3
        self.i2c_drivemode = 0x0
        i2c_base, i2cstatus_base = self.i2c_map(lbus)
        self.i2c_base = i2c_base 
        self.i2cstatus_base = i2cstatus_base
        self.i2c_addr = i2c_addr
        self.icec_addr = icec_addr
        self.indirect_path = indirect_path
        self.lbus = lbus
        self.icec_type = icec_type
        self.backend_name="backend"
        if protocol=="AUTO":
            if indirect_path is not None:
                self.protocol="I2C"
            else:
                params=determineDefaults()
                self.protocol=params["protocol"]
        elif protocol in ("I2C","ICI2C","ICEC"):
            self.protocol = protocol
            if self.protocol in ["ICEC","ICI2C"]:
                self.icec_type = icec_type
                self.icec_addr = icec_addr
        else: 
            print("protocol not supported, will use I2C protocol (options: I2C, ICI2C, ICEC)")
        if self.protocol!="I2C": 
            global uhal
            import uhal

    def connect(self,dev=None,xml=None,uhaldevice=None):
        params=determineDefaults()
        if self.protocol == "I2C":
            # Determine which device path to use (priority: explicit arg, env var, defaults)
            if dev is not None:
                device_path = dev
            else:
                device_path = os.environ.get("I2C_DEVICE") or params.get("device")

            # If the chosen device does not exist, try to auto-detect any /dev/i2c-* device
            if not device_path or not os.path.exists(device_path):
                dev_candidates = []
                try:
                    for entry in os.listdir('/dev'):
                        if entry.startswith('i2c-'):
                            dev_candidates.append(os.path.join('/dev', entry))
                except Exception:
                    dev_candidates = []

                if dev_candidates:
                    # pick the first available i2c device
                    device_path = sorted(dev_candidates)[0]
                else:
                    raise FileNotFoundError(
                        "No I2C device found. Checked: {}. "
                        "Set the I2C device path via the 'dev' argument or the I2C_DEVICE environment variable, "
                        "or enable the i2c-dev kernel module.".format(params.get("device"))
                    )

            self.fd = os.open(device_path, os.O_RDWR)
            fcntl.ioctl(self.fd,0x0703,self.i2c_addr)
        elif self.protocol in ("ICI2C","ICEC"):
            uhal.setLogLevelTo( uhal.LogLevel.ERROR )
            if xml is None:
                xml=params["connections"]
            if uhaldevice is None:
                uhaldevice=params["device"]
            self.hw = uhal.ConnectionManager(xml).getDevice(uhaldevice)
            nodes=self.hw.getNodes()
            if uhaldevice=="TOP":
                self.backend_name=None
                backends=["backend-engine-v3-backend-0","backend-scintillator-0","backend-LD-0","LD-0","backend-HD-0","HD-0"]
                for backend in backends:
                    if backend in nodes:
                        self.backend_name=backend
                
                
            # no longer need to disable the I2C for engine V3 and later

    def close(self):
        if self.fd:
            os.close(self.fd)
            self.fd=None
        elif self.hw:
            self.hw=None
            
    def i2c_map(self, lbus=0):
        # map for i2c_base and i2cstatus_base
        i2c_map = {"M0":(0x100,0x16f),
                   "M1":(0x107,0x184),
                   "M2":(0x10e,0x199)}
        return i2c_map["M%d"%(lbus)]

    def write(self,val):
        #print("In iic.py write(), with protocol " + self.protocol)
        if self.indirect_path is None:
            #print("No indirect path")
            self.write_i2c_direct(val)
        else:
            #print("Found indirect path")
            #print("Target address is ",self.i2c_addr)
            self.indirect_path.write_i2c_indirect(self.i2c_addr,val)

    def read(self,nbytes=1):
        if self.indirect_path is None:
            return self.read_i2c_direct(nbytes)
        else:
            return self.indirect_path.read_i2c_indirect(self.i2c_addr,nbytes)

    def write_lpgbt(self,reg,val): 
        # comunicate directly with the lpgbt
        #print("In write_lpgbt in iic.py, using "+ self.protocol)
        #print("writing reg : val", reg," ",val)
        if self.protocol in ("ICI2C","ICEC"):
            self.write_IC(reg,val)
        elif self.protocol == "I2C": # I2C protocol 
            self.write_i2c_direct([reg&0xFF,((reg>>8)&0xFF),val])
        else: 
            print("unknown communication protocol")

    def read_lpgbt(self,reg,nwords=1):
        # comunicate directly with the lpgbt
        if self.protocol in ("ICI2C","ICEC"):
            return self.read_IC(reg,nwords)
        elif self.protocol == "I2C":
            self.write_i2c_direct([reg&0xFF,((reg>>8)&0xFF)])
            return self.read_i2c_direct(nwords)
        else: 
            print("unknown communication protocol")
            
    def read_i2c_direct(self,nbytes):
        # For use with I2C path
        rv=os.read(self.fd,nbytes)
        if rv is not None:
            rvi=[]
            for item in rv:
                if sys.version_info > (3, 0):
                    rvi.append(item)
                else:
                    rvi.append(ord(item))
            return rvi
        else: return None
        
    def write_i2c_direct(self,mybuf):
        # For use with I2C path
        #s=""
        #for val in (mybuf):
        #    s += chr(val)
        #os.write(self.fd,s)
        os.write(self.fd,bytes(bytearray(mybuf)))


    def write_i2c_indirect(self,target_addr,vals):
        #print("in iic.py, write_i2c_indirect")
        #print("protocol in use is ", self.protocol)
        # Assuming a one-byte val for target_addr, vals should contain the reg address as well
        i2cstatus_base = self.i2cstatus_base
        i2c_base = self.i2c_base 
        #print("i2c_base = ", i2c_base)
        i2c_speed = self.i2c_speed
        #print("i2c_speed", i2c_speed)
        #print("i2c_drivemode", self.i2c_drivemode)
        nwords = len(vals)
        if nwords > 16: print("can only write 16 bytes in one transaction")
        # set speed, and write nbytes 
        self.write_lpgbt(i2c_base+2, (self.i2c_drivemode << 7)+((nwords) << 2)+i2c_speed)
        # enable internal pullup and or drivestrength
        #self.write_lpgbt(i2c_base, 0x00)

        # send command to write to control register
        self.write_lpgbt(i2c_base+6, 0x0)

        # Set up what all should be sent, and where
        # supports multi-byte fully                                     
        self.write_lpgbt(i2c_base+1, target_addr)
        for ival, val in enumerate(vals):
            self.write_lpgbt(i2c_base+2+(ival % 4), val)
            if (ival % 4) == 3 or ival == nwords-1:
                #end of set of 4
                self.write_lpgbt(i2c_base+6, 0x8 + (ival)//4)

        # initiate actual write 
        self.write_lpgbt(i2c_base+6, 0xc)

        # Check the status of the transaction 
        status = self.read_lpgbt(i2cstatus_base+2)[0]
        while not (status & 0x4):
            if status & 0x40:
                #print("Problem: I2C NACK")
                raise I2CException("I2C NACK encountered")
            elif status & 0x8:
                #print("Problem: SDA low before starting transaction")
                raise I2CException("SDA low before starting transaction")
            else:
                status = self.read_lpgbt(i2cstatus_base+2)[0]


    def read_i2c_indirect(self,target_addr,nwords=1):
        # assumes you have already done the write that preceeds the read
        i2cstatus_base = self.i2cstatus_base
        i2c_base = self.i2c_base
        i2c_speed = self.i2c_speed

        # Write command word for reading 
        self.write_lpgbt(i2c_base+1, target_addr)
        if nwords == 1:
            self.write_lpgbt(i2c_base+6, 0x3)
        else:
            # configure number of words
            self.write_lpgbt(i2c_base+2, (self.i2c_drivemode << 7)+(nwords<<2)+i2c_speed )
            self.write_lpgbt(i2c_base+6, 0x0)
            # multi-byte read
            self.write_lpgbt(i2c_base+6, 0xd)

        status = self.read_lpgbt(i2cstatus_base+2)[0]
        while not (status & 0x4):
            if status & 0x40:
                #print("Problem: I2C NACK")
                raise I2CException("I2C NACK encountered")
            elif status & 0x8:
                #print("Problem: SDA low before starting transaction")
                raise I2CException("SDA low before starting transaction")
            else:
                status = self.read_lpgbt(i2cstatus_base+2)[0]

        # Read back  
        output = []
        if nwords == 1:
            output.append(self.read_lpgbt(i2cstatus_base+4)[0])
        else:
            for i in range(nwords):
                o = self.read_lpgbt(i2cstatus_base+20-i)[0]
                #print("%03x : %02x"%(i2cstatus_base+20-i, o))
                output.append(o)
        return output



    ## ----------- Start IC stuff ----------- ##
    def write_IC(self, reg, val):
        prefix=self.icec_type
        addr=self.icec_addr

        backend = self.hw.getNode(self.backend_name)
        backend.getNode("%s_TX_I2C_ADDR"%(prefix)).write(addr)
        self.hw.dispatch()
        backend.getNode("%s_TX_REG_ADDR"%(prefix)).write(reg)
        backend.getNode("%s_TX_DATA"%(prefix)).write(val) 
        backend.getNode("%s_TX_FIFO_LOAD"%(prefix)).write(1)
        self.hw.dispatch()
        backend.getNode("%s_START_WRITE"%(prefix)).write(1)  # write 1, gets cleared automatically
        self.hw.dispatch()


    def read_IC(self, reg, nread=1):
        prefix=self.icec_type
        addr=self.icec_addr

        backend=self.hw.getNode(self.backend_name)
        backend.getNode("%s_TX_I2C_ADDR"%(prefix)).write(addr)
        self.hw.dispatch()
        backend.getNode("%s_TX_REG_ADDR"%(prefix)).write(reg)
        backend.getNode("%s_TX_N_READ"%(prefix)).write(nread)
        self.hw.dispatch()
        backend.getNode("%s_START_READ"%(prefix)).write(1)
        self.hw.dispatch()

        empty= backend.getNode("%s_RX_EMPTY"%(prefix)).read()
        self.hw.dispatch()
        i=0
        while empty and i<100:
            empty= backend.getNode("%s_RX_EMPTY"%(prefix)).read()
            self.hw.dispatch()
            i=i+1

        words = []
        while not empty:
            word = backend.getNode("%s_RX_DATA"%(prefix)).read()
            self.hw.dispatch()
            words.append(word)
            backend.getNode("%s_RX_FIFO_ADV"%(prefix)).write(1) 
            self.hw.dispatch()
            empty= backend.getNode("%s_RX_EMPTY"%(prefix)).read()
            self.hw.dispatch()

        return words[6:-1]
        
if __name__ == "__main__":
    print(determineDefaults())
