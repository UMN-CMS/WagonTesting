#!/bin/bash

sn=${1}

./wagoneer.py --tx 0 --mode 7
./wagoneer.py --tx 1 --mode 7
./wagoneer.py --tx 2 --mode 7
./wagoneer.py --tx 3 --mode 7
./wagoneer.py --tx 4 --mode 7

./wagoneer.py --tx 3 --mode 1

# Clock ELINK 0 1,2
echo 0 1,2 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_012_${sn}_Threes.csv


# Clock ELINK 0 1,3
echo 0 1,3 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_013_${sn}_Threes.csv


# Clock ELINK 0 1,4
echo 0 1,4 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_014_${sn}_Threes.csv


# Clock ELINK 0 1,5
echo 0 1,5 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_015_${sn}_Threes.csv


# Clock ELINK 0 1,6
echo 0 1,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_016_${sn}_Threes.csv


# Clock ELINK 0 1,7
echo 0 1,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_017_${sn}_Threes.csv


# Clock ELINK 0 1,8
echo 0 1,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_018_${sn}_Threes.csv


# Clock ELINK 0 1,9
echo 0 1,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_019_${sn}_Threes.csv


# Clock ELINK 0 1,10
echo 0 1,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_0110_${sn}_Threes.csv


# Clock ELINK 0 1,11
echo 0 1,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_0111_${sn}_Threes.csv


# Clock ELINK 0 2,3
echo 0 2,3 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_023_${sn}_Threes.csv


# Clock ELINK 0 2,4
echo 0 2,4 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_024_${sn}_Threes.csv


# Clock ELINK 0 2,5
echo 0 2,5 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_025_${sn}_Threes.csv


# Clock ELINK 0 2,6
echo 0 2,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_026_${sn}_Threes.csv


# Clock ELINK 0 2,7
echo 0 2,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_027_${sn}_Threes.csv


# Clock ELINK 0 2,8
echo 0 2,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_028_${sn}_Threes.csv


# Clock ELINK 0 2,9
echo 0 2,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_029_${sn}_Threes.csv


# Clock ELINK 0 2,10
echo 0 2,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_0210_${sn}_Threes.csv


# Clock ELINK 0 2,11
echo 0 2,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_0211_${sn}_Threes.csv


# Clock ELINK 0 3,4
echo 0 3,4 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_034_${sn}_Threes.csv


# Clock ELINK 0 3,5
echo 0 3,5 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_035_${sn}_Threes.csv


# Clock ELINK 0 3,6
echo 0 3,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_036_${sn}_Threes.csv


# Clock ELINK 0 3,7
echo 0 3,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_037_${sn}_Threes.csv


# Clock ELINK 0 3,8
echo 0 3,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_038_${sn}_Threes.csv


# Clock ELINK 0 3,9
echo 0 3,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_039_${sn}_Threes.csv


# Clock ELINK 0 3,10
echo 0 3,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_0310_${sn}_Threes.csv


# Clock ELINK 0 3,11
echo 0 3,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_0311_${sn}_Threes.csv


# Clock ELINK 0 4,5
echo 0 4,5 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_045_${sn}_Threes.csv


# Clock ELINK 0 4,6
echo 0 4,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_046_${sn}_Threes.csv


# Clock ELINK 0 4,7
echo 0 4,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_047_${sn}_Threes.csv


# Clock ELINK 0 4,8
echo 0 4,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_048_${sn}_Threes.csv


# Clock ELINK 0 4,9
echo 0 4,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_049_${sn}_Threes.csv


# Clock ELINK 0 4,10
echo 0 4,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_0410_${sn}_Threes.csv


# Clock ELINK 0 4,11
echo 0 4,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_0411_${sn}_Threes.csv


# Clock ELINK 0 5,6
echo 0 5,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_056_${sn}_Threes.csv


# Clock ELINK 0 5,7
echo 0 5,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_057_${sn}_Threes.csv


# Clock ELINK 0 5,8
echo 0 5,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_058_${sn}_Threes.csv


# Clock ELINK 0 5,9
echo 0 5,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_059_${sn}_Threes.csv


# Clock ELINK 0 5,10
echo 0 5,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_0510_${sn}_Threes.csv


# Clock ELINK 0 5,11
echo 0 5,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_0511_${sn}_Threes.csv


# Clock ELINK 0 6,7
echo 0 6,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_067_${sn}_Threes.csv


# Clock ELINK 0 6,8
echo 0 6,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_068_${sn}_Threes.csv


# Clock ELINK 0 6,9
echo 0 6,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_069_${sn}_Threes.csv


# Clock ELINK 0 6,10
echo 0 6,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_0610_${sn}_Threes.csv


# Clock ELINK 0 6,11
echo 0 6,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_0611_${sn}_Threes.csv


# Clock ELINK 0 7,8
echo 0 7,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_078_${sn}_Threes.csv


# Clock ELINK 0 7,9
echo 0 7,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_079_${sn}_Threes.csv


# Clock ELINK 0 7,10
echo 0 7,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_0710_${sn}_Threes.csv


# Clock ELINK 0 7,11
echo 0 7,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_0711_${sn}_Threes.csv


# Clock ELINK 0 8,9
echo 0 8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_089_${sn}_Threes.csv


# Clock ELINK 0 8,10
echo 0 8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_0810_${sn}_Threes.csv


# Clock ELINK 0 8,11
echo 0 8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_0811_${sn}_Threes.csv


# Clock ELINK 0 9,10
echo 0 9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_0910_${sn}_Threes.csv


# Clock ELINK 0 9,11
echo 0 9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_0911_${sn}_Threes.csv


# Clock ELINK 0 10,11
echo 0 10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_01011_${sn}_Threes.csv



