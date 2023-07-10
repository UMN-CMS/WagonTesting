from iic import iic

addr = 0x3c
dev = "/dev/i2c-5"

myIIC = iic()

myIIC.connect(dev=dev, addr=addr)

print(myIIC.write([0x40]))

print("READ {}".format(myIIC.read(10)))

