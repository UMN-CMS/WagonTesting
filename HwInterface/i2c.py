#!/usr/bin/python

import struct, fcntl, os, sys

class iic:

    def __init(self):
        self.fd = None

    def connect(self,dev="/dev/i2c-1",addr=0x20):
        self.addr = addr
        self.fd = os.open(dev, os.O_RDWR)
        code = fcntl.ioctl(self.fd,0x0703,addr)
        return code

    def write_byte(self,reg,val):
        self.write([reg&0xFF,val])

    def read_byte(self,reg):
        self.write([reg&0xFF])
        return self.read(1)[0]

    def read(self,nbytes):
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
        
    def write(self,mybuf):
        #s=""
        #for val in (mybuf):
        #    s += chr(val)
        #os.write(self.fd,s)
        os.write(self.fd,bytes(bytearray(mybuf)))

    def close(self):
        if self.fd:
            os.close(self.fd)
            self.fd=None
    
