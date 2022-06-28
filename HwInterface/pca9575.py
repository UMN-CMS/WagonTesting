#!/usr/bin/python

class pca9575:
   def __init__(self, iicbus, addr=0x20):
      self.iicbus=iicbus
      self.i2caddr=addr

   def setAsInput(self, ibit):
      rbit=ibit%8
      reg=8
      if (ibit>=8):
         reg=9
      # read register 
      self.iicbus.write_byte(self.i2caddr,reg)
      cval=self.iicbus.read_byte(self.i2caddr)
      # set bit
      cval=cval|(1<<rbit)
      # rewrite register
      self.iicbus.write(self.i2caddr,[reg,cval])

   def setAsOutput(self, ibit):
      rbit=ibit%8
      reg=8
      if (ibit>=8):
         reg=9
      # read register 
      self.iicbus.write_byte(self.i2caddr,reg)
      cval=self.iicbus.read_byte(self.i2caddr)
      # clear bit
      cval=cval&(0xFF^(1<<rbit))
      # rewrite register
      self.iicbus.write(self.i2caddr,[reg,cval])
   
   def set(self, ibit, value):
      rbit=ibit%8
      reg=10
      if (ibit>=8):
         reg=11
      # read register 
      self.iicbus.write_byte(self.i2caddr,reg)
      cval=self.iicbus.read_byte(self.i2caddr)
      # adjust value
      if value>0:
         cval=cval|(1<<rbit)
      else:
         cval=cval&(0xFF^(1<<rbit))
      self.iicbus.write(self.i2caddr,[reg,cval])

   def setMany(self, bits, values):
      v=[-1,-1]
      for ibit in range(0,len(bits)):
         rbit=bits[ibit]%8
         xbit=int(bits[ibit]/8)
         if v[xbit]<0:
            # read register 
            self.iicbus.write_byte(self.i2caddr,10+xbit)
            v[xbit]=self.iicbus.read_byte(self.i2caddr)      

         # adjust value
         if values[ibit]>0:
            v[xbit]=v[xbit]|(1<<rbit)
         else:
            v[xbit]=v[xbit]&(0xFF^(1<<rbit))
      for ireg in range(0,2):
         if v[ireg]>=0:
            self.iicbus.write(self.i2caddr,[10+ireg,v[ireg]])

   def read(self, ibit):
      rbit=ibit%8
      reg=0
      if (ibit>=8):
         reg=1
      # read register 
      self.iicbus.write_byte(self.i2caddr,reg)
      cval=self.iicbus.read_byte(self.i2caddr)
      if (cval&(1<<rbit)) > 0:
         return 1
      else:
         return 0

   def setByte(self, ibit, value):
      reg=10
      if (ibit>=8):
         reg=11
      self.iicbus.write(self.i2caddr,[reg,value])

   def readByte(self, ibitlow):
      reg=0
      if (ibitlow>=8):
         reg=1
      # read register 
      self.iicbus.write_byte(self.i2caddr,reg)
      cval=self.iicbus.read_byte(self.i2caddr)
      return cval

