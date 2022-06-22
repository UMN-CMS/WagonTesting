#!/usr/bin/python                                                               
from ADS124 import ADS124
from test import Test 

import argparse
from datetime import datetime
import json

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

	def __init__(self, module=None):
		self.chip = ADS124(bus=1, device=module)
		self.chip.reset()
		self.module = module + 1
		self.chip.reset_POR_flag()
		self.data={}


	def get_resistances(self):
		self.chip.ref_config(1) # internal reference on (needed for IDAC)                                                                        
		self.chip.set_conv_delay(7)

		self.chip.ref_input(0) # set reference source to REFP0, REFN0                                                                            
		self.chip.set_gain(1)
		self.chip.set_idac_channel(self.IDAC1, 13)
		self.chip.set_idac_current(500) # IDAC current set to 500 micro amps                                                                     

		self.chip.setup_mux(self.RTD, self.HGCROC_RE_Sb) # measuring full resistance across all wires                                            
		resistance = self.chip.read_volts(vref=2000,ave=4)
		self.data['RTD -> HGCROC_RE_Sb'] = resistance[0]

		self.chip.setup_mux(self.RTD, self.VMON_LVS) # measuring resistance between lines RTD and VMON_LVS                                       
		resistance = self.chip.read_volts(vref=2000,ave=4)
		self.data['RTD -> VMON_LVS'] = resistance[0]

		self.chip.setup_mux(self.PWR_EN, self.PG_LDO) # measuring resistance between lines PWR_EN and PG_LDO                                     
		resistance = self.chip.read_volts(vref=2000,ave=4)
		self.data['PWR_EN -> PG_LDO'] = resistance[0]

		self.chip.setup_mux(self.PG_DCDC, self.ECON_RE_Hb) # measuring resistance between lines PG_DCDC and ECON_RE_Hb                           
		resistance = self.chip.read_volts(vref=2000,ave=4)
		self.data['PG_DCDC -> ECON_RE_Hb'] = resistance[0]

		self.chip.setup_mux(self.ECON_RE_Sb, self.HGCROC_RE_Sb) # measuring resistance between lines ECON_RE_Sb and HGCROC_RE_Sb                 
		resistance = self.chip.read_volts(vref=2000,ave=4)
		self.data['ECON_RE_Sb -> HGCROC_RE_Sb'] = resistance[0]

		self.chip.ref_input(2) # use internal 2.5V reference                                                                                     
		self.chip.set_idac_channel(self.IDAC2,13)
		self.chip.set_gain(1,enable=False)
		self.chip.set_idac_current(500)

		self.chip.setup_mux(self.HGCROC_RE_Hb, self.HGCROC_RE_Sb)
		volts = self.chip.read_volts(vref=2.5, ave=4)
		resistance = [ volts[0] / ((10**-6)*self.chip.get_idac_current()), volts[1] / ((10**-6) * self.chip.get_idac_current()) ]
		self.data['HGCROC_RE_Hb -> HGCROC_RE_Sb'] = resistance[0]

	def check_values(self):
		passed = True
		if not (1 < self.data['RTD -> VMON_LVS'] < 5):
			passed = False
		if not (1 < self.data['PWR_EN -> PG_LDO'] < 5):
			passed = False
		if not (1 < self.data['PG_DCDC -> ECON_RE_Hb'] < 5):
			passed = False
		return passed


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

	def __init__(self):
		self.chip = ADS124(bus=1, device=3)
		self.chip.reset()
		self.chip.reset_POR_flag()
		self.data = {}

	def get_resistances(self, num_modules=1, east=False):
		self.chip.ref_config(1) # internal reference on (needed for IDAC)                                                                        
		self.chip.set_gain(1,enable=False)
		self.chip.set_conv_delay(7)
		self.chip.ref_input(0) # set reference source to REFP0, REFN0                                                                            

		self.chip.set_idac_channel(self.IDAC1,13)
		self.chip.set_idac_current(500)
		self.chip.setup_mux(self.VMON_REF0,self.PROBE_DC)
		resistance = self.chip.read_volts(vref=2000,ave=4)
		self.data['VMON_REF0 -> PROBE_DC'] = resistance[0]
		
		if num_modules >= 2:
			self.chip.set_idac_channel(self.IDAC2,13)
			self.chip.setup_mux(self.VMON_REF1,self.PROBE_DC)
			resistance = self.chip.read_volts(vref=2000,ave=4)
			self.data['VMON_REF1 -> PROBE_DC'] = resistance[0]
		
		if num_modules == 3:
			self.chip.set_idac_channel(self.IDAC3,13)
			self.chip.setup_mux(self.VMON_REF2,self.PROBE_DC)
			resistance = self.chip.read_volts(vref=2000,ave=4)
			self.data['VMON_REF2 -> PROBE_DC'] = resistance[0]
		
		if east:
			self.chip.set_idac_channel(self.IDAC4,13)
			self.chip.setup_mux(self.X_PWR_EN,self.X_RESETb)
			resistance = self.chip.read_volts(vref=2000,ave=4)
			self.data['X_PWR_EN -> X_RESETb'] = resistance[0]

		self.chip.ref_input(2) # use internal 2.5V reference                                                                                     
		self.chip.set_gain(1,enable=False)
		self.chip.set_idac_channel(self.IDAC5,13)
		self.chip.set_idac_current(500)
		self.chip.setup_mux(self.WAGON_TYPE,self.GND)

		voltage = self.chip.read_volts(vref=2.5, ave=4)
		resistance = [ voltage[0] / ((10**-6) * self.chip.get_idac_current()), voltage[1] / ((10**-6) * self.chip.get_idac_current()) ]
		self.data['WAGON_TYPE -> GND'] = resistance[0]


def parse_ID(ID): #likely will come from an imported utility class, right now just return a basic configuration
	num_modules = 1
	east = False
	return num_modules, east

class rtd_test(Test):

	def __init__(self, board_sn=-1, tester=""):
		self.info_dict = {'name': "Resistance test", 'board_sn': board_sn, 'tester': tester}

		super().__init__(self.rtd_test, self.info_dict, num_modules=2, east=False)

	def rtd_test(self, **kwargs):
		num_modules = kwargs['num_modules']
		east = kwargs['east']
		data = {}
		self.module_chips = [None] * num_modules
		for i in range(len(self.module_chips)):
			self.module_chips[i] = module_ADS124(i)
			self.module_chips[i].get_resistances()
			data.update({'module ' + str(i+1): self.module_chips[i].data})
		self.id_chip = id_ADS124()
		self.id_chip.get_resistances(num_modules, east)
		data.update({'type module': self.id_chip.data})

		passed = True

		return passed, data


if __name__=="__main__":
	parser=argparse.ArgumentParser(description="RTD Test Config")
	parser.add_argument('--SN', type=str, default="dummySN", help='Wagon serial number string')
	parser.add_argument('--tester', type=str, default="anonymous", help='who is performing the test?')
	args=parser.parse_args()
	test = {'board_sn': args.SN, 'tester': args.tester}
	rtd_test(**test)

