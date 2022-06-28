#!/bin/bash

sn=${1}

./wagoneer.py --tx 0 --mode 7
./wagoneer.py --tx 1 --mode 7
./wagoneer.py --tx 2 --mode 7
./wagoneer.py --tx 3 --mode 7
./wagoneer.py --tx 4 --mode 7

./wagoneer.py --tx 3 --mode 1

# Clock ELINK 0
echo 0 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0
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

./wagoneer.py --scan > ClockScans/Clock_01_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_02_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_03_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_04_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_05_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_06_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_07_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_08_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_09_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_010_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_011_${sn}_Single.csv


# Clock ELINK 1
echo 1 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 0
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

./wagoneer.py --scan > ClockScans/Clock_11_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_12_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_13_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_14_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_15_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_16_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_17_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_18_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_19_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_110_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_111_${sn}_Single.csv


# Clock ELINK 2
echo 2 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 2 --outputs 1 0 0 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --setinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Clock_21_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_22_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_23_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_24_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_25_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_26_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_27_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_28_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_29_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_210_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_211_${sn}_Single.csv


# Clock ELINK 3
echo 3 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0
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

./wagoneer.py --scan > ClockScans/Clock_31_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_32_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_33_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_34_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_35_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_36_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_37_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_38_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_39_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_310_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_311_${sn}_Single.csv


# Clock ELINK 4
echo 4 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 0
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

./wagoneer.py --scan > ClockScans/Clock_41_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_42_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_43_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_44_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_45_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_46_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_47_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_48_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_49_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_410_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_411_${sn}_Single.csv


# Clock ELINK 5
echo 5 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 2 --outputs 0 1 0 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --setinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Clock_51_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_52_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_53_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_54_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_55_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_56_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_57_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_58_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_59_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_510_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_511_${sn}_Single.csv


# Clock ELINK 6
echo 6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0
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

./wagoneer.py --scan > ClockScans/Clock_61_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_62_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_63_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_64_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_65_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_66_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_67_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_68_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_69_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_610_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_611_${sn}_Single.csv


# Clock ELINK 7
echo 7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 0
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

./wagoneer.py --scan > ClockScans/Clock_71_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_72_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_73_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_74_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_75_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_76_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_77_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_78_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_79_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_710_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_711_${sn}_Single.csv


# Clock ELINK 8
echo 8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 2 --outputs 0 0 1 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --setinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Clock_81_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_82_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_83_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_84_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_85_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_86_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_87_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_88_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_89_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_810_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_811_${sn}_Single.csv


# Clock ELINK 9
echo 9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1
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

./wagoneer.py --scan > ClockScans/Clock_91_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_92_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_93_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_94_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_95_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_96_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_97_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_98_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_99_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_910_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_911_${sn}_Single.csv


# Clock ELINK 10
echo 10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 1
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

./wagoneer.py --scan > ClockScans/Clock_101_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_102_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_103_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_104_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_105_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_106_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_107_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_108_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_109_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_1010_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_1011_${sn}_Single.csv


# Clock ELINK 11
echo 11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 1

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --setinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Clock_111_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_112_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_113_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_114_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_115_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_116_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_117_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_118_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_119_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_1110_${sn}_Single.csv
./wagoneer.py --scan > ClockScans/Clock_1111_${sn}_Single.csv
