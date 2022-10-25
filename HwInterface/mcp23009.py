#!/usr/bin/python

class mcp23009:
    def __init__(self, iicbus, addr=0x20):
        self.iicbus=iicbus
        self.i2caddr=addr


    # Set GPIO as input
    def setAsInput(self, ibit):
        reg = 0

        # Read current register value
        self.iicbus.write_byte(self.i2caddr, reg)
        current = self.iicbus.read_byte(self.i2caddr)

        # Set the bit for selected GPIO
        current = current|(1<<ibit)

        # Rewrite the register using new hex value
        self.iicbus.write([reg,current])        

    # Set GPIO as output
    def setAsOutput(self, ibit):
        reg = 0
        
        # Read current register value
        current = self.iicbus.read_byte(reg)

        # Set the bit for selected GPIO
        current = current&(0xFF^(1<<ibit))

        # Rewrite the register using new hex value
        self.iicbus.write([reg,current])        
        

    # Set value of GPIO
    def set(self, ibit, value):
        reg = 0

        # Read current register value
        current = self.iicbus.read_byte(reg)

        # Set value of GPIO either high (1) or low (0)
        if(value > 0): 
            current = current|(1<<ibit)
        else:
            current = current&(0xFF^(1<<ibit))

        # Rewrite the register using new hex value
        self.iicbus.write([reg,current])        

    # Set the output value of many GPIOs at once
    def setMany(self, bits, values):
        val = -1
        reg = 9
        # Loop over all bits 
        for ibit in range(0,len(bits)):
            # Read register current value
            if val < 0:
                #self.iicbus.write_byte(self.i2caddr, reg)
                val = self.iicbus.read_byte(reg)

            # Adjust the value
            if values[ibit]>0:
                val = val|(1<<bits[ibit])
            else:
                val = val&(0xFF^(1<<bits[ibit]))

        # Write new register value
        self.iicbus.write_byte(reg, val)

        #print("Setting reg {} with val {:08b}".format(reg, val))

    # Read register for I2C R/W test
    # Register chosen controls the mask value for the interupt which won't affect any behaviors
    def read(self, ibit):
        reg=3
        # Read register
        self.iicbus.write_byte(self.i2caddr,reg)
        val = self.iicbus.read_byte(self.i2caddr)
        
        # Check value of specified bit
        if (cval&(1<<ibit)):
            return 1
        else:
            return 0
        
    def setByte(self, value):
        reg=3

        # Set I2C check register
        self.iicbus.write_byte(reg,value)

    def readByte(self):
        reg=3
        
        # Read I2C check register
        cval=self.iicbus.read_byte(reg)
        #cval=self.iicbus.read_byte(self.i2caddr)
        return cval

    def readAllBytes(self):
        bytes = []
        for i in range(0,11):
            bytes.append(self.iicbus.read_byte(i))

        return bytes

