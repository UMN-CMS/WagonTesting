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

./wagoneer.py --tx 2 --mode 1

# DAQ2 ELINK 0
echo 0 DAQ2

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --setinvert
./wagoneer.py --rx 5 --setinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_01_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_02_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_03_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_04_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_05_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_06_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_07_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_08_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_09_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_010_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_011_${sn}_Single.csv


# DAQ2 ELINK 1
echo 1 DAQ2

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

./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_11_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_12_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_13_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_14_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_15_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_16_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_17_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_18_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_19_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_110_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_111_${sn}_Single.csv


# DAQ2 ELINK 2
echo 2 DAQ2

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

./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_21_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_22_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_23_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_24_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_25_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_26_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_27_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_28_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_29_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_210_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_211_${sn}_Single.csv


# DAQ2 ELINK 3
echo 3 DAQ2

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

./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_31_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_32_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_33_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_34_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_35_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_36_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_37_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_38_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_39_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_310_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_311_${sn}_Single.csv


# DAQ2 ELINK 4
echo 4 DAQ2

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

./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_41_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_42_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_43_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_44_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_45_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_46_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_47_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_48_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_49_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_410_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_411_${sn}_Single.csv


# DAQ2 ELINK 5
echo 5 DAQ2

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

./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_51_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_52_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_53_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_54_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_55_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_56_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_57_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_58_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_59_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_510_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_511_${sn}_Single.csv


# DAQ2 ELINK 6
echo 6 DAQ2

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

./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_61_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_62_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_63_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_64_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_65_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_66_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_67_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_68_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_69_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_610_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_611_${sn}_Single.csv


# DAQ2 ELINK 7
echo 7 DAQ2

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

./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_71_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_72_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_73_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_74_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_75_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_76_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_77_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_78_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_79_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_710_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_711_${sn}_Single.csv


# DAQ2 ELINK 8
echo 8 DAQ2

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

./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_81_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_82_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_83_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_84_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_85_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_86_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_87_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_88_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_89_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_810_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_811_${sn}_Single.csv


# DAQ2 ELINK 9
echo 9 DAQ2

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

./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_91_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_92_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_93_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_94_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_95_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_96_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_97_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_98_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_99_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_910_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_911_${sn}_Single.csv


# DAQ2 ELINK 10
echo 10 DAQ2

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

./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_101_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_102_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_103_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_104_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_105_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_106_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_107_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_108_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_109_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_1010_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_1011_${sn}_Single.csv


# DAQ2 ELINK 11
echo 11 DAQ2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 2

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --setinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_111_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_112_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_113_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_114_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_115_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_116_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_117_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_118_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_119_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_1110_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/2/Singles/DAQ2_1111_${sn}_Single.csv





