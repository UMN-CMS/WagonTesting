# Software support for EA-DOGS LCD display
# Current firmware version uses /dev/i2c-5 with address 0x3C
# (as of 3/7/23)

from iic import iic
import time
import os
import binascii


# Defining command values

# Commands with IS=X RE=X
COM_CLEAR_DISPLAY           = 0x01
COM_ROM_A                   = 0x00
COM_ROM_B                   = 0x04
COM_ROM_C                   = 0x0C

# Commands with IS=X RE=0
COM_RETURN_HOME             = 0x02

COM_ENTRY_MODE              = 0x04
COM_CURSOR_RIGHT            = 0x02
COM_CURSOR_LEFT             = 0x00
COM_DISPLAY_SHIFT           = 0x01

COM_DISPLAY                 = 0x08
COM_DISPLAY_ON              = 0x04
COM_DISPLAY_OFF             = 0x00
COM_CURSOR_ON               = 0x02
COM_CURSOR_OFF              = 0x00
COM_BLINK_ON                = 0x01
COM_BLINK_OFF               = 0x00

COM_SET_DDRAM_ADDR         = 0x80

COM_8BIT_4LINE_RE0_IS0      = 0x38 # Function set command, last two bits specify the extension registers RE and IS for next command
COM_8BIT_4LINE_RE0_IS1      = 0x39
COM_8BIT_4LINE_RE1_IS0      = 0x3A
COM_8BIT_4LINE_RE1_IS1      = 0x3B

# Commands with IS=X RE=1
COM_POWER_DOWN_MODE         = 0x02
COM_POWER_DOWN_ENABLE       = 0x01
COM_POWER_DOWN_DISABLE      = 0x00

COM_EXTENDED_FUNCTION_SET   = 0x08
COM_6DOT_FW                 = 0x04
COM_5DOT_FW                 = 0x00
COM_BW_INVERT               = 0x02
COM_BW_INVERT_DISABLE       = 0x00
COM_34_LINE                 = 0x01
COM_12_LINE                 = 0x00

COM_SET_SCROLL_QUANT        = 0x80

COM_ROM_SELECTION           = 0x72

# Commands with IS=0 RE=0
COM_CURSOR_DISPLAY          = 0x10
COM_DISPLAY_SHIFT           = 0x08
COM_CURSOR_SHIFT            = 0x00
COM_SHIFT_RIGHT             = 0x04
COM_SHIFT_LEFT              = 0x00

# Commands with IS=0 RE=1
COM_DOUBLE_BIAS_SHIFT       = 0x10
COM_BIAS1_ON                = 0x02
COM_DISPLAY_SHIFT_ENABLE    = 0x01

# Commands with IS=1 RE=0
COM_SET_OSC                 = 0x10
COM_BIAS_0_ON               = 0x08

COM_FOLLOWER_CTRL           = 0x60
COM_DIVIDER_CIRCUIT         = 0x08

COM_SET_CONTRAST            = 0x70

COM_POWER_CTRL              = 0x50
COM_ICON_ON                 = 0x08
COM_BOOSTER_ON              = 0x04

# Commands with IS=1 RE=1
COM_SHIFT_ENABLE            = 0x10
COM_SHIFT_LINE1             = 0x01
COM_SHIFT_LINE2             = 0x02
COM_SHIFT_LINE3             = 0x04
COM_SHIFT_LINE4             = 0x08

COM_SCROLL_ENABLE           = 0x10
COM_SCROLL_LINE1            = 0x01
COM_SCROLL_LINE2            = 0x02
COM_SCROLL_LINE3            = 0x04
COM_SCROLL_LINE4            = 0x08

class SSD1803A:


    def __init__(self, iicbus, address=0x3c):

        self.iicbus = iicbus
        self.address = address

        self.start()


    def write(self, vals):
        self.iicbus.write(vals)   

    def read(self):
        return self.iicbus.read()

    def clear(self):
        
        commands = [COM_8BIT_4LINE_RE0_IS0, COM_CLEAR_DISPLAY, COM_RETURN_HOME]

        self.write(commands)
        
    def reset(self):
        
        os.system("gpioset 1 19=1")

    def green(self):
        
        os.system("gpioset 1 16=1 17=0 18=1")

    def red(self):

        os.system("gpioset 1 16=1 17=1 18=0")

    def white(self):
    
        os.system("gpioset 1 16=0 17=1 18=1")

    def write_position(self, line, row=1, col=0):
        
        line = "J" + line

        position = 0x20 * (row-1) + col

        commands = [COM_8BIT_4LINE_RE0_IS0, COM_SET_DDRAM_ADDR | position]

        asciiCode = [int(binascii.hexlify(str.encode(x)),16) for x in line]

        self.write(commands)
        self.write(asciiCode)

    def loading_bar(self, test_num, percent):

        num_bars = int(percent * 8)
        test_num = int(test_num)
        
        self.write_position("{}:".format(test_num)+("=" * num_bars) + ">" + " " * (7-num_bars), row=test_num)

    def test_result(self, test_num, passed):
        
        if passed: outcome = "Passed"
        else: outcome = "Failed"

        test_num = int(test_num)

        self.write_position("{}: {} ".format(test_num, outcome), test_num) 

    def write_line(self, line):
        
        line = "J" + line

        asciiCode = [int(binascii.hexlify(str.encode(x)),16) for x in line]

        self.clear()        

        self.write(asciiCode)
        
    def set_stage(self):

        self.write_position("1:Untested", row=1, col=0)
        self.write_position("2:Untested", row=2, col=0)
        self.write_position("3:Untested", row=3, col=0)
        self.write_position("4:Untested", row=4, col=0)

    def happy_face(self):
        
        self.green()

        self.write_position("   |  |   ", row=1, col=0)
        self.write_position(" \x60______/ ", row=2, col=0)
        self.write_position("          ", row=3, col=0)
        self.write_position("  Passed  ", row=4, col=0)

    def sad_face(self):
        
        self.red()

        self.write_position("   |  |   ", row=1, col=0)
        self.write_position(" /\xFF\xFF\xFF\xFF\xFF\xFF\xFF\x60 ", row=2, col=0)
        self.write_position("          ", row=3, col=0)
        self.write_position("  Passed  ", row=4, col=0)

    def demo(self):
        self.clear()

        for i in range(1,5):
            for per in range(0,8):

                self.loading_bar(i, per/8.)
                time.sleep(0.5)

            self.test_result(i, True)
            
        time.sleep(3)

        self.happy_face()

    def home(self):

        self.white()        

        self.write_position("Wagon Test", row=1, col=0)
        self.write_position("          ", row=2, col=0)
        self.write_position("Ready for ", row=3, col=0)
        self.write_position("next test ", row=4, col=0)

    def start(self):
       
        self.reset()
        self.white()

        print("Initializing LCD...")
        #Initialization function to set LCD to 4-line display
        cmds = []
        cmds.append(COM_8BIT_4LINE_RE1_IS0)
        cmds.append(COM_EXTENDED_FUNCTION_SET | COM_34_LINE)
        cmds.append(COM_ENTRY_MODE | COM_CURSOR_RIGHT)
        cmds.append(COM_DOUBLE_BIAS_SHIFT | COM_BIAS1_ON)

        cmds.append(COM_8BIT_4LINE_RE0_IS1)
        cmds.append(COM_SET_OSC | COM_BIAS_0_ON | 0x03) # 0x03 for the internal frequency setting (POR value)
        cmds.append(COM_FOLLOWER_CTRL | COM_DIVIDER_CIRCUIT | 0x06) # 0x06 for resistor ratio
        cmds.append(COM_POWER_CTRL | COM_BOOSTER_ON | 0x00) # 0x00 for MSB of contrast
        cmds.append(COM_SET_CONTRAST | 0x00) # 0x0A for LSB of contrast

        cmds.append(COM_8BIT_4LINE_RE0_IS0)
        cmds.append(COM_DISPLAY | COM_DISPLAY_ON | COM_CURSOR_ON | COM_BLINK_ON)
        self.write(cmds)

        cmds=[]
        cmds.append(COM_8BIT_4LINE_RE0_IS0)
        cmds.append(COM_CLEAR_DISPLAY)
        self.write(cmds)
        time.sleep(1)

        self.home()

        cmds = []
        cmds.append(COM_8BIT_4LINE_RE0_IS0)
        cmds.append(COM_DISPLAY | COM_DISPLAY_ON)
        self.write(cmds)

        print("LCD Ready!")



if __name__ == "__main__":

    I2C_BUS = 5
    ADDRESS = 0x3d

    myiic = iic()
    myiic.connect(dev="/dev/i2c-{}".format(I2C_BUS), addr=ADDRESS)

    lcd = SSD1803A(myiic, ADDRESS)

    time.sleep(3)
    
    lcd.demo()
