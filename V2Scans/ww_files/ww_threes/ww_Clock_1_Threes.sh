#!/bin/bash

sn=${1}

./wagoneer.py --tx 0 --mode 7
./wagoneer.py --tx 1 --mode 7
./wagoneer.py --tx 2 --mode 7
./wagoneer.py --tx 3 --mode 7
./wagoneer.py --tx 4 --mode 7

./wagoneer.py --tx 3 --mode 1

# Clock ELINK 1 2,3
echo 1 2,3 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_123_${sn}_Threes.csv


# Clock ELINK 1 2,4
echo 1 2,4 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 1 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_124_${sn}_Threes.csv


# Clock ELINK 1 2,5
echo 1 2,5 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 1 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_125_${sn}_Threes.csv


# Clock ELINK 1 2,6
echo 1 2,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_126_${sn}_Threes.csv


# Clock ELINK 1 2,7
echo 1 2,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 1 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_127_${sn}_Threes.csv


# Clock ELINK 1 2,8
echo 1 2,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 1 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_128_${sn}_Threes.csv


# Clock ELINK 1 2,9
echo 1 2,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_129_${sn}_Threes.csv


# Clock ELINK 1 2,10
echo 1 2,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_1210_${sn}_Threes.csv


# Clock ELINK 1 2,11
echo 1 2,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 0 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_1211_${sn}_Threes.csv


# Clock ELINK 1 3,4
echo 1 3,4 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_134_${sn}_Threes.csv


# Clock ELINK 1 3,5
echo 1 3,5 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 1 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_135_${sn}_Threes.csv


# Clock ELINK 1 3,6
echo 1 3,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_136_${sn}_Threes.csv


# Clock ELINK 1 3,7
echo 1 3,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_137_${sn}_Threes.csv


# Clock ELINK 1 3,8
echo 1 3,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 1 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_138_${sn}_Threes.csv


# Clock ELINK 1 3,9
echo 1 3,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_139_${sn}_Threes.csv


# Clock ELINK 1 3,10
echo 1 3,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_1310_${sn}_Threes.csv


# Clock ELINK 1 3,11
echo 1 3,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_1311_${sn}_Threes.csv


# Clock ELINK 1 4,5
echo 1 4,5 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 1 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 1 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_145_${sn}_Threes.csv


# Clock ELINK 1 4,6
echo 1 4,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_146_${sn}_Threes.csv


# Clock ELINK 1 4,7
echo 1 4,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 1 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_147_${sn}_Threes.csv


# Clock ELINK 1 4,8
echo 1 4,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 1 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 1 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_148_${sn}_Threes.csv


# Clock ELINK 1 4,9
echo 1 4,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_149_${sn}_Threes.csv


# Clock ELINK 1 4,10
echo 1 4,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 1 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_1410_${sn}_Threes.csv


# Clock ELINK 1 4,11
echo 1 4,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 1 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_1411_${sn}_Threes.csv


# Clock ELINK 1 5,6
echo 1 5,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 1 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_156_${sn}_Threes.csv


# Clock ELINK 1 5,7
echo 1 5,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 1 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 1 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_157_${sn}_Threes.csv


# Clock ELINK 1 5,8
echo 1 5,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 1 1 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_158_${sn}_Threes.csv


# Clock ELINK 1 5,9
echo 1 5,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 1 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_159_${sn}_Threes.csv


# Clock ELINK 1 5,10
echo 1 5,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 0 1 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_1510_${sn}_Threes.csv


# Clock ELINK 1 5,11
echo 1 5,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 1 0 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_1511_${sn}_Threes.csv


# Clock ELINK 1 6,7
echo 1 6,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_167_${sn}_Threes.csv


# Clock ELINK 1 6,8
echo 1 6,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 1 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_168_${sn}_Threes.csv


# Clock ELINK 1 6,9
echo 1 6,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_169_${sn}_Threes.csv


# Clock ELINK 1 6,10
echo 1 6,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_1610_${sn}_Threes.csv


# Clock ELINK 1 6,11
echo 1 6,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_1611_${sn}_Threes.csv


# Clock ELINK 1 7,8
echo 1 7,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 1 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 1 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_178_${sn}_Threes.csv


# Clock ELINK 1 7,9
echo 1 7,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_179_${sn}_Threes.csv


# Clock ELINK 1 7,10
echo 1 7,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 1 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_1710_${sn}_Threes.csv


# Clock ELINK 1 7,11
echo 1 7,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 1 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_1711_${sn}_Threes.csv


# Clock ELINK 1 8,9
echo 1 8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 1 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_189_${sn}_Threes.csv


# Clock ELINK 1 8,10
echo 1 8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 1 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_1810_${sn}_Threes.csv


# Clock ELINK 1 8,11
echo 1 8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 1 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_1811_${sn}_Threes.csv


# Clock ELINK 1 9,10
echo 1 9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_1910_${sn}_Threes.csv


# Clock ELINK 1 9,11
echo 1 9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_1911_${sn}_Threes.csv


# Clock ELINK 1 10,11
echo 1 10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_11011_${sn}_Threes.csv


# Clock ELINK 2 3,4
echo 2 3,4 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_234_${sn}_Threes.csv


# Clock ELINK 2 3,5
echo 2 3,5 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 1 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_235_${sn}_Threes.csv


# Clock ELINK 2 3,6
echo 2 3,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_236_${sn}_Threes.csv


# Clock ELINK 2 3,7
echo 2 3,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_237_${sn}_Threes.csv


# Clock ELINK 2 3,8
echo 2 3,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 1 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_238_${sn}_Threes.csv


# Clock ELINK 2 3,9
echo 2 3,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_239_${sn}_Threes.csv


# Clock ELINK 2 3,10
echo 2 3,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_2310_${sn}_Threes.csv


# Clock ELINK 2 3,11
echo 2 3,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 0 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_2311_${sn}_Threes.csv


# Clock ELINK 2 4,5
echo 2 4,5 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 1 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_245_${sn}_Threes.csv


# Clock ELINK 2 4,6
echo 2 4,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_246_${sn}_Threes.csv


# Clock ELINK 2 4,7
echo 2 4,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 1 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_247_${sn}_Threes.csv


# Clock ELINK 2 4,8
echo 2 4,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 1 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_248_${sn}_Threes.csv


# Clock ELINK 2 4,9
echo 2 4,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_249_${sn}_Threes.csv


# Clock ELINK 2 4,10
echo 2 4,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_2410_${sn}_Threes.csv


# Clock ELINK 2 4,11
echo 2 4,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 0 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_2411_${sn}_Threes.csv


# Clock ELINK 2 5,6
echo 2 5,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 1 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_256_${sn}_Threes.csv


# Clock ELINK 2 5,7
echo 2 5,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 1 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_257_${sn}_Threes.csv


# Clock ELINK 2 5,8
echo 2 5,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 1 1 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_258_${sn}_Threes.csv


# Clock ELINK 2 5,9
echo 2 5,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 1 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_259_${sn}_Threes.csv


# Clock ELINK 2 5,10
echo 2 5,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 1 1 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_2510_${sn}_Threes.csv


# Clock ELINK 2 5,11
echo 2 5,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 1 0 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_2511_${sn}_Threes.csv


# Clock ELINK 2 6,7
echo 2 6,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_267_${sn}_Threes.csv


# Clock ELINK 2 6,8
echo 2 6,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 1 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_268_${sn}_Threes.csv


# Clock ELINK 2 6,9
echo 2 6,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_269_${sn}_Threes.csv


# Clock ELINK 2 6,10
echo 2 6,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_2610_${sn}_Threes.csv


# Clock ELINK 2 6,11
echo 2 6,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 0 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_2611_${sn}_Threes.csv


# Clock ELINK 2 7,8
echo 2 7,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 1 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_278_${sn}_Threes.csv


# Clock ELINK 2 7,9
echo 2 7,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_279_${sn}_Threes.csv


# Clock ELINK 2 7,10
echo 2 7,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 1 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_2710_${sn}_Threes.csv


# Clock ELINK 2 7,11
echo 2 7,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 0 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_2711_${sn}_Threes.csv


# Clock ELINK 2 8,9
echo 2 8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 1 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_289_${sn}_Threes.csv


# Clock ELINK 2 8,10
echo 2 8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 1 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_2810_${sn}_Threes.csv


# Clock ELINK 2 8,11
echo 2 8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 1 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_2811_${sn}_Threes.csv


# Clock ELINK 2 9,10
echo 2 9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_2910_${sn}_Threes.csv


# Clock ELINK 2 9,11
echo 2 9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 0 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_2911_${sn}_Threes.csv


# Clock ELINK 2 10,11
echo 2 10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 0 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Threes/Clock_21011_${sn}_Threes.csv

