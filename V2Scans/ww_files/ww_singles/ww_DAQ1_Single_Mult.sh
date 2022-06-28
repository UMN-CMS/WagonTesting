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

./wagoneer.py --tx 1 --mode 1

# DAQ1 ELINK 0
echo 0 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_01_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_02_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_03_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_04_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_05_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_06_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_07_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_08_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_09_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_010_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_011_${sn}_Single.csv


# DAQ1 ELINK 1
echo 1 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_11_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_12_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_13_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_14_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_15_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_16_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_17_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_18_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_19_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_110_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_111_${sn}_Single.csv


# DAQ1 ELINK 2
echo 2 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_21_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_22_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_23_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_24_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_25_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_26_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_27_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_28_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_29_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_210_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_211_${sn}_Single.csv


# DAQ1 ELINK 3
echo 3 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_31_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_32_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_33_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_34_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_35_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_36_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_37_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_38_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_39_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_310_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_311_${sn}_Single.csv


# DAQ1 ELINK 4
echo 4 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_41_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_42_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_43_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_44_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_45_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_46_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_47_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_48_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_49_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_410_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_411_${sn}_Single.csv


# DAQ1 ELINK 5
echo 5 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_51_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_52_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_53_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_54_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_55_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_56_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_57_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_58_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_59_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_510_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_511_${sn}_Single.csv


# DAQ1 ELINK 6
echo 6 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_61_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_62_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_63_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_64_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_65_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_66_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_67_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_68_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_69_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_610_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_611_${sn}_Single.csv


# DAQ1 ELINK 7
echo 7 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_71_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_72_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_73_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_74_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_75_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_76_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_77_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_78_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_79_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_710_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_711_${sn}_Single.csv


# DAQ1 ELINK 8
echo 8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_81_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_82_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_83_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_84_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_85_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_86_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_87_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_88_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_89_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_810_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_811_${sn}_Single.csv


# DAQ1 ELINK 9
echo 9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_91_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_92_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_93_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_94_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_95_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_96_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_97_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_98_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_99_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_910_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_911_${sn}_Single.csv


# DAQ1 ELINK 10
echo 10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_101_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_102_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_103_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_104_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_105_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_106_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_107_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_108_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_109_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_1010_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_1011_${sn}_Single.csv


# DAQ1 ELINK 11
echo 11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_111_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_112_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_113_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_114_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_115_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_116_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_117_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_118_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_119_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_1110_${sn}_Single.csv
./wagoneer.py --scan > DAQScans/1/Singles/DAQ1_1111_${sn}_Single.csv




