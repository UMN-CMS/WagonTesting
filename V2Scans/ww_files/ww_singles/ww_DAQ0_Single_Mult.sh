#!/bin/bash

sn=${1}

./wagoneer.py --tx 0 --mode 7
./wagoneer.py --tx 1 --mode 7
./wagoneer.py --tx 3 --mode 7
./wagoneer.py --tx 4 --mode 7

# DAQ 0s
echo DAQs
./wagoneer.py --tx 2 --mode 7

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 0

./wagoneer.py --rx 0 --clearinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --setinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > danScans/zero_DAQ2_${sn}_fc.csv

./wagoneer.py --tx 0 --mode 1


# DAQ0 ELINK 0
echo 0 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --setinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_01_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_02_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_03_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_04_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_05_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_06_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_07_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_08_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_09_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_010_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_011_${sn}_Single.csv


# DAQ0 ELINK 1
echo 1 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --setinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_11_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_12_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_13_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_14_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_15_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_16_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_17_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_18_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_19_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_110_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_111_${sn}_Single.csv


# DAQ0 ELINK 2
echo 2 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 2 --outputs 2 0 0 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_21_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_22_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_23_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_24_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_25_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_26_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_27_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_28_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_29_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_210_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_211_${sn}_Single.csv


# DAQ0 ELINK 3
echo 3 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --clearinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_31_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_32_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_33_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_34_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_35_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_36_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_37_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_38_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_39_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_310_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_311_${sn}_Single.csv


# DAQ0 ELINK 4
echo 4 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --clearinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_41_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_42_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_43_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_44_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_45_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_46_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_47_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_48_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_49_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_410_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_411_${sn}_Single.csv


# DAQ0 ELINK 5
echo 5 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 2 --outputs 0 2 0 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_51_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_52_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_53_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_54_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_55_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_56_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_57_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_58_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_59_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_510_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_511_${sn}_Single.csv


# DAQ0 ELINK 6
echo 6 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_61_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_62_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_63_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_64_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_65_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_66_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_67_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_68_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_69_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_610_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_611_${sn}_Single.csv


# DAQ0 ELINK 7
echo 7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_71_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_72_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_73_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_74_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_75_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_76_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_77_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_78_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_79_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_710_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_711_${sn}_Single.csv


# DAQ0 ELINK 8
echo 8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 2 --outputs 0 0 2 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_81_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_82_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_83_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_84_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_85_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_86_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_87_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_88_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_89_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_810_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_811_${sn}_Single.csv


# DAQ0 ELINK 9
echo 9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_91_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_92_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_93_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_94_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_95_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_96_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_97_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_98_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_99_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_910_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_911_${sn}_Single.csv


# DAQ0 ELINK 10
echo 10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_101_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_102_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_103_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_104_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_105_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_106_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_107_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_108_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_109_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_1010_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_1011_${sn}_Single.csv


# DAQ0 ELINK 11
echo 11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 2

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_111_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_112_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_113_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_114_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_115_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_116_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_117_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_118_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_119_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_1110_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/0/Singles/DAQ0_1111_${sn}_Single.csv



