from Test import Test
from HwInterface.ADS124 import ADS124

class ADC(Test):
    
    def __init__(self, conn, board_sn=-1, tester='', device=1, bus=1, cshigh=False, max_speed=5000000, read_reg=False, write_reg=False, register=None, value=None):
        self.info_dict = {'name': "ADC Self Test", 'board_sn': board_sn, 'tester': tester}

        self.conn = conn
        Test.__init__(self, self.adc, self.info_dict, conn, device=device, bus=bus, cshigh=cshigh, max_speed=max_speed, read_reg=read_reg, write_reg=write_reg, register=register, value=value)

    def adc(self, **kwargs):
        self.passed = True
        self.test_data = {}
        passed_list = [True for i in range(7)]
         
        device = kwargs['device']
        bus = kwargs['bus']
        cshigh = kwargs['cshigh']
        max_speed = kwargs['max_speed']
        read_reg = kwargs['read_reg']
        write_reg = kwargs['write_reg']
        register = kwargs['register']
        value = kwargs['value']
        
        print(device, bus)

        for device in range(0,4):

            self.test_data["device_{}".format(device)] = {}

            self.conn.send("Initializing test for device {}".format(device))

            thisADS124 = ADS124(bus, device, cshigh, max_speed)

            if write_reg:
                thisADS124.write_reg(register,value)

            if read_reg:
                data = thisADS124.read_reg(register)
                print(data)

            thisADS124.wakeup()
            thisADS124.reset()
            print('resetting POR flag')
            thisADS124.reset_POR_flag()
            print('status register: '+ str(bin(thisADS124.read_reg(thisADS124.STATUS_REG)[0])))

            thisADS124.ref_input(2)
            thisADS124.ref_config(2)    
            thisADS124.self_offset_cal()
            thisADS124.set_gain(gain=1)

            thisADS124.conversion_mode(continuous=False)
            print('set to single shot conversion mode')
            #print('datarate register: ' + str(bin(thisADS124.read_reg(thisADS124.DATARATE_REG)[0])))
            print('-------------------------------------------------------')

            print('set to system monitor mode 1')
            thisADS124.sys_monitor_config(config=1)
            thisADS124.start()
            print('PGA inputs shorted to (AVDD + AVSS) / 2 and disconnected from AINx and the multiplexer; gain is set to ' + str(thisADS124.get_gain()) )
            #print('system monitor register: ' + str(bin(thisADS124.read_reg(thisADS124.SYS_REG)[0])))
            result1 = thisADS124.read_volts()
            if result1 > 0.01:
                passed_list[0] = False
            self.test_data["device_{}".format(device)]["test_1"] = {"Passed": passed_list[0], "Result": f'{result1:.3f} volts', "Raw_Result": str(thisADS124.read_data())}
            self.conn.send("Result 1: {} V =< 0.01 V \t {}".format(result1, passed_list[0]))
            
            print(self.test_data["device_{}".format(device)]["test_1"])
            print('-------------------------------------------------------')
            
            print('set to system monitor mode 2')
            thisADS124.sys_monitor_config(config=2)
            thisADS124.start()
            print('Internal temperature sensor measurement; gain set to ' + str(thisADS124.get_gain()) )
            result2 = thisADS124.read_volts()*(10.0**5)*(1.0/403.0)*9.0/5.0 + 32.0
            if result2 >= 100 or result2 <= 80:
                passed_list[1] = False
            self.test_data["device_{}".format(device)]["test_2"] = {"Passed": passed_list[1], "Result": f'{result2:.3f} degrees (F)', "Raw_Result": str(thisADS124.read_data())}
            self.conn.send("Result 2: {} Degrees F \t {} ".format(result2, passed_list[1]))
            print(self.test_data["device_{}".format(device)]["test_2"])
            print('-------------------------------------------------------')

            print('set to system monitor mode 3')
            thisADS124.sys_monitor_config(config=3)
            thisADS124.start()
            print("Gain Set to: " + str(thisADS124.get_gain()) )
            result3 = thisADS124.read_volts()
            if result3 >= 0.84 or result3 <= 0.82:
                passed_list[2] = False
            self.test_data["device_{}".format(device)]["test_3"] = {"Passed": passed_list[2], "Result": f'{result3:.3f} volts', "Raw_Result": str(thisADS124.read_data())}
            self.conn.send("Result 3: {} V ~ 0.83 V \t {} ".format(result3, passed_list[2]))
            print(self.test_data["device_{}".format(device)]["test_3"])
            print('-------------------------------------------------------')

            print('set to system monitor mode 4')
            thisADS124.sys_monitor_config(config=4)
            thisADS124.start()
            print('DVDD / 4 measurement; gain set to ' + str(thisADS124.get_gain()) )
            result4 = thisADS124.read_volts()
            if result4 >= 0.84 or result4 <= 0.82:
                passed_list[3] = False
            self.test_data["device_{}".format(device)]["test_4"] = {"Passed": passed_list[3], "Result": f'{result4:.3f} volts', "Raw_Result": str(thisADS124.read_data())}
            self.conn.send("Result 4: {} V ~ 0.83 V \t {} ".format(result4, passed_list[3]))
            print(self.test_data["device_{}".format(device)]["test_4"])
            print('-------------------------------------------------------')

            #print('set to system monitor mode 5')
            #thisADS124.sys_monitor_config(config=5)
            #thisADS124.start()
            #print('Burn-out current sources enabled, 0.2 uA setting; gain set to ' + str(thisADS124.get_gain()) )
            #result5 = thisADS124.read_volts()
            #if result5 >= 0.002 or result5 <= 0.001:
            #    passed_list[4] = False
            #self.test_data["test_5"] = {"Passed": passed_list[4], "Result": f'{result5:.4f} volts', "Raw_Result": str(thisADS124.read_data())}
            #print(self.test_data["test_5"])
            #print('-------------------------------------------------------')

            #print('set to system monitor mode 6')
            #thisADS124.sys_monitor_config(config=6)
            #thisADS124.start()
            #print('Burn-out current sources enabled, 1 uA setting; gain set to ' + str(thisADS124.get_gain()) )
            #result6 = thisADS124.read_volts()
            #if result6 >= 0.01 or result6 <= 0.005:
            #    passed_list[5] = False
            #self.test_data["test_6"] = {"Passed": passed_list[5], "Result": f'{result6:.4f} volts', "Raw_Result": str(thisADS124.read_data())}
            #print(self.test_data["test_6"])

            #print('-------------------------------------------------------')

            #print('set to system monitor mode 7')
            #thisADS124.sys_monitor_config(config=7)
            #thisADS124.start()
            #print('Burn-out current sources enabled, 10 uA setting; gain set to ' + str(thisADS124.get_gain()) )
            #result7 = thisADS124.read_volts()
            #if result7 >= 0.1 or result7 <= 0.05:
            #    passed_list[6] = False
            #self.test_data["test_7"] = {"Passed": passed_list[6], "Result": f'{result7:.4f} volts', "Raw_Result": str(thisADS124.read_data())}
            #print(self.test_data["test_7"])

            self.passed &= all(passed_list)
             
            self.conn.send("LCD ; Passed:{} Test:1".format(self.passed))

            thisADS124.close()

        self.conn.send("Done.")
        return self.passed, self.test_data
