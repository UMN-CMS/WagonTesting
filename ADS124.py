#!/usr/bin/python

import spidev
import argparse
import math
import time

class ADS124:

	def __init__(self, bus=0, device=0, cshigh=False, max_speed=500000):
		self.spi = spidev.SpiDev()
		self.spi.open(bus,device)
		self.spi.cshigh = cshigh
		self.spi.mode = 1
		self.spi.max_speed_hz = max_speed

	def encode(self):
		return {'chip':'ADS124S08'}

	STATUS_REG = 0x01
	INPMUX_REG = 0x02
	PGA_REG = 0x03
	DATARATE_REG = 0x04
	REF_REG = 0x05
	IDACMAG_REG = 0x06
	IDACMUX_REG = 0x07
	VBIAS_REG = 0x08
	SYS_REG = 0x09
	OFCAL0_REG = 0x0A
	OFCAL1_REG = 0x0B
	OFCAL2_REG = 0x0C
	FSCAL0_REG = 0x0D
	FSCAL1_REG = 0x0E
	FSCAL2_REG = 0x0F
	GPIODAT_REG = 0x10
	GPIOCON_REG = 0x11

	WAKEUP = 0x02
	PWRDWN = 0x04
	RESET = 0x06
	START = 0x08
	STOP = 0x0A
	RDATA = 0x12

	def read_reg(self, reg_number, n=1):
		""" Read n registers starting at register reg_number """
		to_send = [(1<<5|reg_number), n-1]
		for i in range(0,n):
			to_send.append(0)
		data = self.spi.xfer2(to_send) ## sends bytes to ADS124 over SPI, returns response data
		return data[2:n+2]

	def write_reg(self, reg_number, value):
		""" writes a value to register at reg_number. If a list of values is passed, writes values to registers starting at reg_number """
		if type(value) is list:
			n=len(value)
		else:
			n=1
			value = [value]
		to_send = [(1<<6|reg_number), n-1] + value
		self.spi.xfer2(to_send)

	def close(self):
		self.spi.close()

	def powerdown(self):
		""" Put device in power-down mode """ 
		self.spi.xfer2([self.PWRDWN])

	def wakeup(self):
		""" Wake-up device from power-down mode """
		self.spi.xfer2([self.WAKEUP])

	def reset(self):
		""" Reset the device """
		self.spi.xfer2([self.RESET])

	def start(self):
		""" Start analog to digital conversion """
		self.spi.xfer2([self.START])
		time.sleep(0.1)

	def stop(self):
		""" Stop analog to digital conversion  """
		self.spi.xfer2([self.STOP])

	def read_data(self):
		""" Request chip to read out data. Uses RDATA command reads data from a buffer with no concern for timing issues corrupting the read """
		data = self.spi.xfer2([self.RDATA, 0,0,0])
		return data[1:4]

	def direct_data_read():
		""" 
		Direct data read.

		Chip continuously reads data while started, so can use this method to 
		read default output stream of data. Less safe than RDATA command
		"""
		data=self.spi.xfer2([0,0,0])
		return data

	def read_volts(self,vref=2.5,ave=1):
		""" Returns the value of the ADC converted to volts averaged over a number of adc conversions. default reference voltage is 2.5V (internal reference source). """
		val = 0
		val_list = [] 
		for i in range(0,ave):
			self.start()
			data = self.read_data()
			voltage = ((data[0]%128)<<16)+(data[1]<<8)+data[2]
			if((data[0]>>7)==1):
				voltage = voltage*-1
			val = val + voltage
			val_list = val_list + [voltage]
		val = val/(1.0*ave)
		if ave > 1:
			sum = 0
			for i in range(ave):
				sum = sum + (val_list[i]-val)**2
			deviation = math.sqrt(sum/ave)
		gain = self.get_gain()
		if ave == 1:
                        return val*vref/((2**23)*gain)
		else:
			return [val*vref/((2**23)*gain),deviation*vref/((2**23)*gain)]
		#return val*vref/((2**23))

	def reset_POR_flag(self):
		""" Flag in status register must be cleared by user register write if a power-on reset (POR) event has occurred """
		status = self.read_reg(self.STATUS_REG)[0]
		status = (status|(1<<7))^(1<<7)
		self.write_reg(self.STATUS_REG,status)
		time.sleep(0.1)

	def setup_mux(self, AIN_PIN_P=0, AIN_PIN_N=1):
		""" Set the ADC positive and negative input channel. analog input pins=0-11, analog common input pin=12 """
		setting = AIN_PIN_P<<4
		setting = setting|AIN_PIN_N
		self.write_reg(self.INPMUX_REG,setting)

	def set_conv_delay(self,delay_step=1):
		""" 
		Sets the programmable conversion delay time for the first conversion after a WREG when a configuration change 
		resets of the digital filter and triggers a new conversion.  Delays steps are multiples of t_mod (t_mod = 16*t_clk)
		delay_step   0: 14*t_mod
			     1: 25*t_mod
			     2: 64*t_mod
			     3: 256*t_mod 
			     4: 1024*t_mod
			     5: 2048*t_mod
			     6: 4096*t_mod
			     7: 1*t_mod

		"""
		setting = self.read_reg(self.PGA_REG)[0]
		setting = (setting|(0b111<<5))^(0b111<<5)
		setting = setting|(delay_step<<5)
		self.write_reg(self.PGA_REG,setting)

	def set_gain(self, gain=1, enable=True):
		""" enable or bypass and set the gain of the PGA. Gain accepts values in the range [1,128] and rounds to integer powers of 2 """
		setting = self.read_reg(self.PGA_REG)[0]
		setting = (setting|(0b11111))^(0b11111)
		if enable:
			setting = setting|(1<<3)
			gain_power = round(math.log(gain,2))
			setting = setting|gain_power
		self.write_reg(self.PGA_REG,setting)

	def get_gain(self):
		""" print the current gain setting """
		setting = self.read_reg(self.PGA_REG)[0]
		gain = 2**((setting|(0b11111<<3))^(0b11111<<3))
		return gain

	### Data rate settings

	def global_chop(self,enable=False):
		"""
		Enables the global chop function. 
		When enabled, the device automatically swaps the inputs and takes the average of two consecutive readings to cancel the offset voltage.
		"""
		setting = self.read_reg(self.DATARATE_REG)[0]
		if enable:
			setting = setting|(1<<7)
		else:
			setting = (setting|(1<<7))^(1<<7)
		self.write_reg(self.DATARATE_REG,setting)

	def clock_source(self,internal=True):
		""" Configures the clock source to use either the internal oscillator or an external clock. """
		setting = self.read_reg(self.DATARATE_REG)[0]
		if internal:
			setting = setting|(1<<6)
		else:
			setting = (setting|(1<<6))^(1<<6)
		self.write_reg(self.DATARATE_REG,setting)

	def conversion_mode(self,continuous=True):
		""" Configures the ADC for either continuous conversion or single-shot conversion mode. """
		setting = self.read_reg(self.DATARATE_REG)[0]
		if continuous:
			setting = (setting|(1<<5))^(1<<5)
		else:
			setting = setting|(1<<5)
		self.write_reg(self.DATARATE_REG,setting)

	def filter_select(self,low_latency=True):
		""" Configures the ADC to use either the sinc3 or the low-latency filter. """
		setting = self.read_reg(self.DATARATE_REG)[0]
		if low_latency:
			setting = setting|(1<<4)
		else:
			setting = (setting|(1<<4))^(1<<4)
		self.write_reg(self.DATARATE_REG,setting)

	def set_datarate(self,datarate=20):
		""" Data Rate accepts values in the range [2.5,4000] (samples per second) and takes on discrete values in uneven intervals """
		rates = [2.5,5,10,16.6,20,50,60,100,200,400,800,1000,2000,4000]
		if datarate<2.5:
			ratebit = 0
		elif datarate > 4000 or datarate == 4000:
			ratebit = 13
		else:
			for i in range(len(rates)-1):
				if datarate == rate[i]:
					ratebit = i
				elif rate[i] < datarate < rates[i+1]:
					if abs(rates[i]-datarate) < abs(rates[i+1]-datarate):
						ratebit = i
						break
					else:
						ratebit = i+1
						break
		setting = self.read_reg(self.DATARATE_REG)[0]
		setting = setting|ratebit
		self.write_reg(self.DATARATE_REG,setting)

	def get_datarate(self):
		""" read back the configured data rate """
		rates = [2.5,5,10,16.6,20,50,60,100,200,400,800,1000,2000,4000]
		setting = self.read_reg(self.DATARATE_REG)[0]
		datarate = rates[(setting|0b1111<<4)^(0b1111<<4)]
		print( "Datarate is set to " + str(datarate) + " samples per second")

	### Reference controls

	def ref_monitor(self,config=0):
		""" 
		Enables and configures the reference monitor. 
		config	0: disabled, 
			1: FL_REF_L0 monitor enabled, threshold 0.3 V 
			2: FL_REF_L0 and FL_REF_L1 monitors enabled, thresholds 0.3 V and 1/3 · (AVDD – AVSS)
			3: FL_REF_L0 monitor and 10-MΩ pull-together enabled, threshold 0.3 V
		"""
		setting = self.read_reg(self.REF_REG)[0]
		setting = (setting|(0b11<<6))^(0b11<<6)
		setting = setting|(config<<6)
		self.write_reg(self.REF_REG,setting)

	def buffer_bypass(self, postive=True, negative=False):
		""" 
		Bypasses (True) or enables (False) the positive or negative buffer. 
		It is recommended to Disable positive when V(REFPx) is close to AVDD and negative when V(REFNx) is close to AVSS.
		"""
		setting = self.read_reg(self.REF_REG)[0]
		setting = (setting|(0b11<<4))^(0b11<<4)
		if not postive:
			setting = setting|(1<<5)
		if not negative:
			setting = setting|(1<<4)
		self.write_reg(self.REF_REG,setting)

	def ref_input(self, ref_in=0):
		"""
		Selects the reference input source for the ADC.
		ref_in 	0: REFP0, REFN0
			1: REFP1, REFN1
			2: Internal 2.5-V reference
		"""
		setting = self.read_reg(self.REF_REG)[0]
		setting = (setting|(0b11<<2))^(0b11<<2)
		setting = setting|(ref_in<<2)
		self.write_reg(self.REF_REG,setting)

	def ref_config(self, ref_conf=0):
		"""
		Configures the behavior of the internal voltage reference.
		ref_conf 0: Internal reference off
			 1: Internal reference on, but powers down in power-down mode
			 2: Internal reference is always on, even in power-down mode
		"""
		setting = self.read_reg(self.REF_REG)[0]
		setting = (setting|(0b11))^(0b11)
		setting = setting|ref_conf
		self.write_reg(self.REF_REG,setting)

	### Excitation Current settings

	def PGA_out_monitor(self, enable=False):
		""" Enables the PGA output voltage rail monitor circuit. """
		setting = self.read_reg(self.IDACMAG_REG)[0]
		setting = (setting|(1<<7))^(1<<7)
		setting = setting|(enable<<7)
		self. write_reg(self.IDACMAG_REG,setting)

	def lowside_psw(self, open_psw=True):
		""" Controls the low-side power switch. """
		setting = self.read_reg(self.IDACMAG_REG)[0]
		setting = (setting|(1<<6))^(1<<6)
		setting = setting|(open_psw<<6)
		self.write_reg(self.IDACMAG_REG,setting)

	def set_idac_current(self, current=0):
		"""Set the magnitude of current for both IDAC's in micro amps. Takes values in the range [0,2000]"""
		currents = [10,50,100,250,500,750,1000,1500,2000]
		if current == 0:
			cur_bit = 0
		elif current < 10:
			cur_bit = 1
		elif current > 2000 or current==2000:
			cur_bit = 9
		elif current < 2000:
			for i in range(len(currents)-1):
				if currents[i]==current:
					cur_bit=i+1
				elif currents[i] < current < currents[i+1]:
					if abs(currents[i]-current) < abs(currents[i+1]-current):
						cur_bit = i+1
						break
					else:
						cur_bit = i+2
						break
		setting = self.read_reg(self.IDACMAG_REG)[0]
		setting = (setting|(0b1111))^(0b1111)
		setting = setting|cur_bit
		self.write_reg(self.IDACMAG_REG,setting)

	def get_idac_current(self):
		""" read back the configured IDAC current """
		currents = [0,10,50,100,250,500,750,1000,1500,2000]
		setting = self.read_reg(self.IDACMAG_REG)[0]
		current = currents[(setting|0b1111<<4)^(0b1111<<4)]
		return current

	def set_idac_channel(self, idac1=13, idac2=13):
		""" Selects the output channel for IDAC1 and IDAC2. Takes [0-13], where 0-12 are AIN pins (12 is AINCOM) and 13 disconnects the IDAC """
		setting = (idac2<<4)|idac1
		self.write_reg(self.IDACMUX_REG,setting)

	### Sensor biasing settings

	def set_vbias_level(self, level=0):
		""" 
		Sets the VBIAS output voltage level. VBIAS is disabled when not connected to any input. 
		level	0: (AVDD + AVSS) / 2
			1: (AVDD + AVSS) / 12
		"""
		setting = self.read_reg(self.VBIAS_REG)[0]
		setting = (setting|(1<<7))^(1<<7)
		setting = setting|(level<<7)
		self.write_reg(self.VBIAS_REG,setting)

	def vbias_enable(self, pin=0, enable=False):
		""" Enables VBIAS on the selected AIN pin. Accepts pin values [0-6]; [0-5] are AIN0-AIN5, 6 is AINCOM """
		setting = self.read_reg(self.VBIAS_REG)[0]
		setting = (setting|(1<<pin))^(1<<pin)
		setting = setting|(enable<<pin)
		self.write_reg(self.VBIAS_REG,setting)

	### System control settings

	def sys_monitor_config(self, config=0):
		"""
		Enables a set of system monitor measurements using the ADC.
		config  0: Disabled (default)
		        1: PGA inputs shorted to (AVDD + AVSS) / 2 and disconnected from AINx and the multiplexer; gain set by user
		        2: Internal temperature sensor measurement; PGA must be enabled (PGA_EN[1:0] = 01); gain set by user(2)
				3: (AVDD – AVSS) / 4 measurement; gain set to 1(3)
				4: DVDD / 4 measurement; gain set to 1(3)
				5: Burn-out current sources enabled, 0.2-μA setting
				6: Burn-out current sources enabled, 1-μA setting
				7: Burn-out current sources enabled, 10-μA setting
		"""
		setting = self.read_reg(self.SYS_REG)[0]
		setting = (setting|(0b111<<5))^(0b111<<5)
		setting = setting|(config<<5)
		self.write_reg(self.SYS_REG,setting)

	def cal_sample_size(self, size=8):
		""" Configures the number of samples averaged for self and system offset and system gain calibration. Takes 1,4,8, or 16 """
		sizes = [1,4,8,16]
		if size > 16:
			size_bit = 3
		else:
			for i in range(len(sizes)-1):
				if size == sizes[i]:
					size_bit=i
					break
				elif sizes[i] < size < sizes[i+1]:
					if abs(sizes[i]-size) < abs(sizes[i+1]-size):
						size_bit = i
						break
					else:
						size_bit = i+1
						break
		setting = self.read_reg(self.SYS_REG)[0]
		setting = (setting|(0b11<<3))^(0b11<<3)
		setting = setting|(size_bit<<3)
		self.write_reg(self.SYS_REG,setting)

	def spi_timeout(self,enable=False):
		""" Enables the SPI timeout function. """
		setting = self.read_reg(self.SYS_REG)[0]
		setting = (setting|(1<<2))^(1<<2)
		setting = setting|(enable<<2)
		self.write_reg(self.SYS_REG,setting)

	def enable_conv_byte(self, crc=False, status=False):
		""" Enables the CRC byte appended to and the status byte prepended to the conversion result """
		setting = self.read_reg(self.SYS_REG)[0]
		setting = (setting|0b11)^(0b11)
		setting = (setting|(crc<<1))|status
		self.write_reg(self.SYS_REG,setting)

	def self_offset_cal(self):
		""" initiates a self offset calibration. The device internally shorts the inputs to mid-supply and performs the calibration. Must be in conversion mode """
		self.spi.xfer2([0x19])

	def sys_offset_cal(self):
		""" 
		initiates a system offset calibration. The inputs must be externally shorted to a voltage within the input range, 
		ideally near the mid-supply voltage of (AVDD + AVSS) / 2, and device must be in conversion mode. 
		"""
		self.spi.xfer2([0x16])

	def sys_gain_cal(self):
		""" Initiates the system gain calibration. The input must be externally set to full-scale and device must be in conversion mode. """
		self.spi.xfer2([0x17])

	### GPIO controls

	def setup_gpo(self, pin):
		""" configure the GPIO pin (0-3) as output """
		config = self.read_reg(self.GPIOCON_REG)[0]
		config = config|(1<<pin)
		self.write_reg(self.GPIOCON_REG,config)
		setting = self.read_reg(self.GPIODAT_REG)[0]
		setting = (setting|(1<<(pin+4)))^(1<<(pin+4))
		self.write_reg(self.GPIODAT_REG,setting)

	def setup_gpi(self, pin):
		""" configure the GPIO pin (0-3) as input """
		config = self.read_reg(self.GPIOCON_REG)[0]
		config = config|(1<<pin)
		self.write_reg(self.GPIOCON_REG,config)
		setting = self.read_reg(self.GPIODAT_REG)[0]
		setting = setting|(1<<(pin+4))
		self.write_reg(self.GPIODAT_REG,setting)

	def read_gpio(self, pin):
		data = self.read_reg(self.GPIODAT_REG)[0]
		data = data&(1<<pin)
		return data

	def write_gpio(self, pin, high=True):
		data = self.read_reg(self.GPIODAT_REG)[0]
		data = (data|(1<<pin))^(1<<pin)
		data = data|(high<<pin)


if __name__=="__main__":
	parser=argparse.ArgumentParser(description="ADS124 chip")
	parser.add_argument('--device',type=int,default=3,help='device number')
	parser.add_argument('--bus',type=int,default=1,help='IPS bus')
	parser.add_argument('--cshigh',action='store_true',help='cs pin high')
	parser.add_argument('--max_speed',type=int,default=5000000,help='max speed')
	parser.add_argument('--read_reg',action='store_true')
	parser.add_argument('--write_reg',action='store_true')
	parser.add_argument('--register',type=int,default=None)
	parser.add_argument('--value',type=int,default=None)
	args=parser.parse_args()

	thisADS124 = ADS124(args.bus, args.device, args.cshigh, args.max_speed)

	if args.write_reg:
		thisADS124.write_reg(args.register,args.value)

	if args.read_reg:
		data = thisADS124.read_reg(args.register)
		print(data)


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
	print('result: %.3f volts '%(thisADS124.read_volts()))
	print('raw result: ' + str(thisADS124.read_data()))
	print('-------------------------------------------------------')
	
	print('set to system monitor mode 2')
	thisADS124.sys_monitor_config(config=2)
	thisADS124.start()
	print('Internal temperature sensor measurement; gain set to ' + str(thisADS124.get_gain()) )
	#print('system monitor register: ' + str(bin(thisADS124.read_reg(thisADS124.SYS_REG)[0])))
	print('result: %.3f degrees (F) '%(thisADS124.read_volts()*(10.0**5)*(1.0/403.0)*9.0/5.0 + 32.0) )
	print('raw result: ' +str(thisADS124.read_data()))
	print('-------------------------------------------------------')

	print('set to system monitor mode 3')
	thisADS124.sys_monitor_config(config=3)
	thisADS124.start()
	print('(AVDD – AVSS) / 4 measurement; gain set to ' + str(thisADS124.get_gain()) )
	#print('system monitor register: ' + str(bin(thisADS124.read_reg(thisADS124.SYS_REG)[0])))
	print('result: %.3f volts'%(thisADS124.read_volts()))
	print('raw result: ' +str(thisADS124.read_data()))
	print('-------------------------------------------------------')

	print('set to system monitor mode 4')
	thisADS124.sys_monitor_config(config=4)
	thisADS124.start()
	print('DVDD / 4 measurement; gain set to ' + str(thisADS124.get_gain()) )
	#print('system monitor register: ' + str(bin(thisADS124.read_reg(thisADS124.SYS_REG)[0])))
	print('result: %.3f volts'%(thisADS124.read_volts()))
	print('raw result: ' + str(thisADS124.read_data()))
	print('-------------------------------------------------------')

	print('set to system monitor mode 5')
	thisADS124.sys_monitor_config(config=5)
	thisADS124.start()
	print('Burn-out current sources enabled, 0.2-μA setting; gain set to ' + str(thisADS124.get_gain()) )
	#print('system monitor register: ' + str(bin(thisADS124.read_reg(thisADS124.SYS_REG)[0])))
	print('result: %.4f volts'%(thisADS124.read_volts()))
	print('raw result: ' + str(thisADS124.read_data()))
	print('-------------------------------------------------------')

	print('set to system monitor mode 6')
	thisADS124.sys_monitor_config(config=6)
	thisADS124.start()
	print('Burn-out current sources enabled, 1-μA setting; gain set to ' + str(thisADS124.get_gain()) )
	#print('system monitor register: ' + str(bin(thisADS124.read_reg(thisADS124.SYS_REG)[0])))
	print('result: %.4f volts'%(thisADS124.read_volts()))
	print('raw result: ' +str(thisADS124.read_data()))
	print('-------------------------------------------------------')

	print('set to system monitor mode 7')
	thisADS124.sys_monitor_config(config=7)
	thisADS124.start()
	print('Burn-out current sources enabled, 10-μA setting; gain set to ' + str(thisADS124.get_gain()) )
	#print('system monitor register: ' + str(bin(thisADS124.read_reg(thisADS124.SYS_REG)[0])))
	print('result: %.4f volts'%(thisADS124.read_volts()))
	print('raw result: ' +str(thisADS124.read_data()))
