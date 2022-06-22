#!/usr/bin/python                                                               
from ADS124 import ADS124
from test import Test 

import argparse
from datetime import datetime
import json


def parse_ID(ID): #likely will come from an imported utility class, right now just return a basic configuration
	num_modules = 1
	east = False
	return num_modules, east

def check_value(value, target, tolerance):
	passed = (target - tolerance < line < target + tolerance)
	if passed:
		message = "passed"
	else:
		message = "FAILED"
	return passed, message


class module_ADS124:

	# wire connections to analog input number (12 is common)                                                                                         
	RTD = 1
	VMON_LVS = 2
	PWR_EN = 3
	PG_LDO = 4
	PG_DCDC = 5
	ECON_RE_Hb = 8
	ECON_RE_Sb = 11
	HGCROC_RE_Sb = 12
	RTD_REF = 6
	HGCROC_RE_Hb = 7
	IDAC1 = 0
	IDAC2 = 6

	def __init__(self, module=None, targets=None):
		self.chip = ADS124(bus=1, device=module)
		self.chip.reset()
		self.module = module + 1
		self.targets = [[3,1],[3,1],[3,1],[20,1],[2,1]] #placeholder
		self.chip.reset_POR_flag()
		self.data={}

	def get_resistances(self):
		all_passed = True
		self.chip.ref_config(1) # internal reference on (needed for IDAC)                                                                        
		self.chip.set_conv_delay(7)

		self.chip.ref_input(0) # set reference source to REFP0, REFN0                                                                            
		self.chip.set_gain(1)
		self.chip.set_idac_channel(self.IDAC1, 13)
		self.chip.set_idac_current(500) # IDAC current set to 500 micro amps                                                                     

		self.chip.setup_mux(self.RTD, self.HGCROC_RE_Sb) # measuring full resistance across all wires
		line = 'RTD -> HGCROC_RE_Sb'                                       
		resistance = self.chip.read_volts(vref=2000,ave=4)
		passed, message = check_value(resistance[0], self.targets[0][0], self.targets[0][1])
		if not passed:
			all_passed = False
		self.data[line] = (resistance[0], message)
		print("line %s resistance is %.2f ohms; %s" % (line resistance[0], message))

		self.chip.setup_mux(self.RTD, self.VMON_LVS) # measuring resistance between lines RTD and VMON_LVS  
		line = 'RTD -> VMON_LVS'                                  
		resistance = self.chip.read_volts(vref=2000,ave=4)
		self.data[line] = resistance[0]
		print("line %s resistance is %.2f ohms" % (line, resistance[0]))

		self.chip.setup_mux(self.PWR_EN, self.PG_LDO) # measuring resistance between lines PWR_EN and PG_LDO      
		line = 'PWR_EN -> PG_LDO'                             
		resistance = self.chip.read_volts(vref=2000,ave=4)
		passed, message = check_value(resistance[0], self.targets[1][0], self.targets[1][1])
		if not passed:
			all_passed = False
		self.data[line] = (resistance[0], message)
		print("line %s resistance is %.2f ohms; %s" % (line, resistance[0], message))

		self.chip.setup_mux(self.PG_DCDC, self.ECON_RE_Hb) # measuring resistance between lines PG_DCDC and ECON_RE_Hb
		line = 'PG_DCDC -> ECON_RE_Hb'                           
		resistance = self.chip.read_volts(vref=2000,ave=4)
		passed, message = check_value(resistance[0], self.targets[2][0], self.targets[2][1])
		if not passed:
			all_passed = False
		self.data[line] = (resistance[0], message)
		print("line %s resistance is %.2f ohms; %s" % (line, resistance[0], message))

		self.chip.setup_mux(self.ECON_RE_Sb, self.HGCROC_RE_Sb) # measuring resistance between lines ECON_RE_Sb and HGCROC_RE_Sb   
		line = 'ECON_RE_Sb -> HGCROC_RE_Sb'            
		resistance = self.chip.read_volts(vref=2000,ave=4)
		passed, message = check_value(resistance[0], self.targets[3][0], self.targets[3][1])
		if not passed:
			all_passed = False
		self.data[line] = (resistance[0], message)
		print("line %s resistance is %.2f ohms; %s" % (line, resistance[0], message))

		self.chip.ref_input(2) # use internal 2.5V reference                                                                                     
		self.chip.set_idac_channel(self.IDAC2,13)
		self.chip.set_gain(1,enable=False)
		self.chip.set_idac_current(500)

		self.chip.setup_mux(self.HGCROC_RE_Hb, self.HGCROC_RE_Sb)
		line = 'HGCROC_RE_Hb -> HGCROC_RE_Sb'
		volts = self.chip.read_volts(vref=2.5, ave=4)
		resistance = [ volts[0] / ((10**-6)*self.chip.get_idac_current()), volts[1] / ((10**-6) * self.chip.get_idac_current()) ]
		passed, message = check_value(resistance[0], self.targets[4][0], self.targets[4][1])
		if not passed:
			all_passed = False
		self.data[line] = (resistance[0], message)
		print("line %s resistance is %.2f ohms; %s" % (line, resistance[0], message))

		return all_passed


class id_ADS124:

	# wire connections to analog input number (12 is common)                                                                                         
	X_PWR_EN = 1
	X_RESETb = 2
	VMON_REF0 = 4
	VMON_REF1 = 8
	VMON_REF2 = 10
	PROBE_DC = 12
	WAGON_TYPE = 6
	GND = 7
	IDAC1 = 3
	IDAC2 = 5
	IDAC3 = 9
	IDAC4 = 0
	IDAC5 = 11

	def __init__(self, targets=None):
		self.chip = ADS124(bus=1, device=3)
		self.chip.reset()
		self.targets = [[8,1]] #placeholder
		self.chip.reset_POR_flag()
		self.data = {}

	def get_resistances(self, num_modules=1, east=False):
		all_passed = True
		self.chip.ref_config(1) # internal reference on (needed for IDAC)                                                                        
		self.chip.set_gain(1,enable=False)
		self.chip.set_conv_delay(7)
		self.chip.ref_input(0) # set reference source to REFP0, REFN0                                                                            

		self.chip.set_idac_channel(self.IDAC1,13)
		self.chip.set_idac_current(500)
		self.chip.setup_mux(self.VMON_REF0,self.PROBE_DC)
		line = 'VMON_REF0 -> PROBE_DC'
		resistance = self.chip.read_volts(vref=2000,ave=4)
		passed, message = check_value(resistance[0], self.targets[0][0], self.targets[0][1])
		if not passed:
			all_passed = False
		self.data[line] = (resistance[0], message)
		print("line %s resistance is %.2f ohms; %s" % (line, resistance[0], message))
		
		if num_modules >= 2:
			self.chip.set_idac_channel(self.IDAC2,13)
			self.chip.setup_mux(self.VMON_REF1,self.PROBE_DC)
			line = 'VMON_REF1 -> PROBE_DC'
			resistance = self.chip.read_volts(vref=2000,ave=4)
			passed, message = check_value(resistance[0], self.targets[1][0], self.targets[1][1])
			if not passed:
				all_passed = False
			self.data[line] = (resistance[0], message)
			print("line %s resistance is %.2f ohms; %s" % (line, resistance[0], message))
		
		if num_modules == 3:
			self.chip.set_idac_channel(self.IDAC3,13)
			self.chip.setup_mux(self.VMON_REF2,self.PROBE_DC)
			line = 'VMON_REF2 -> PROBE_DC'
			resistance = self.chip.read_volts(vref=2000,ave=4)
			passed, message = check_value(resistance[0], self.targets[2][0], self.targets[2][1])
			if not passed:
				all_passed = False
			self.data[line] = (resistance[0], message)
			print("line %s resistance is %.2f ohms; %s" % (line, resistance[0], message))
		
		if east:
			self.chip.set_idac_channel(self.IDAC4,13)
			self.chip.setup_mux(self.X_PWR_EN,self.X_RESETb)
			line = 'X_PWR_EN -> X_RESETb'
			resistance = self.chip.read_volts(vref=2000,ave=4)
			passed, message = check_value(resistance[0], self.targets[3][0], self.targets[3][1])
			if not passed:
				all_passed = False
			self.data[line] = (resistance[0], message)
			print("line %s resistance is %.2f ohms; %s" % (line, resistance[0], message))

		self.chip.ref_input(2) # use internal 2.5V reference                                                                                     
		self.chip.set_gain(1,enable=False)
		self.chip.set_idac_channel(self.IDAC5,13)
		self.chip.set_idac_current(500)
		self.chip.setup_mux(self.WAGON_TYPE,self.GND)
		line = 'WAGON_TYPE -> GND'
		voltage = self.chip.read_volts(vref=2.5, ave=4)
		resistance = [ voltage[0] / ((10**-6) * self.chip.get_idac_current()), voltage[1] / ((10**-6) * self.chip.get_idac_current()) ]
		self.data[line] = resistance[0]
		print("line %s resistance is %.2f ohms" % (line, resistance[0]))

		return all_passed


class rtd_test(Test):

	def __init__(self, board_sn=-1, tester=""):
		self.info_dict = {'name': "Resistance test", 'board_sn': board_sn, 'tester': tester}

		super().__init__(self.rtd_test, self.info_dict, num_modules=2, east=False)

	def rtd_test(self, **kwargs):
		passed = True
		num_modules = kwargs['num_modules']
		east = kwargs['east']
		data = {}
		self.module_chips = [None] * num_modules
		for i in range(len(self.module_chips)):
			self.module_chips[i] = module_ADS124(i)
			if not self.module_chips[i].get_resistances(): passed = False
			data.update({'module ' + str(i+1): self.module_chips[i].data})
		self.id_chip = id_ADS124()
		if not self.id_chip.get_resistances(num_modules, east): passed = False
		data.update({'wagon type chip': self.id_chip.data})

		return passed, data


if __name__=="__main__":
	parser=argparse.ArgumentParser(description="RTD Test Config")
	parser.add_argument('--SN', type=str, default="dummySN", help='Wagon serial number string')
	parser.add_argument('--tester', type=str, default="anonymous", help='who is performing the test?')
	args=parser.parse_args()
	test = {'board_sn': args.SN, 'tester': args.tester}
	rtd_test(**test)

