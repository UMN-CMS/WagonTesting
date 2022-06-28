#!/bin/bash

sn=${1}

./wagoneer.py --tx 0 --mode 7
./wagoneer.py --tx 1 --mode 7
./wagoneer.py --tx 2 --mode 7
./wagoneer.py --tx 3 --mode 7
./wagoneer.py --tx 4 --mode 7

./wagoneer.py --tx 2 --mode 1


# Clock ELINK 0 1,2,3
echo 0 1,2,3 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0123_${sn}_Quads.csv


# Clock ELINK 0 1,2,4
echo 0 1,2,4 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0124_${sn}_Quads.csv


# Clock ELINK 0 1,2,5
echo 0 1,2,5 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0125_${sn}_Quads.csv


# Clock ELINK 0 1,2,6
echo 0 1,2,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0126_${sn}_Quads.csv


# Clock ELINK 0 1,2,7
echo 0 1,2,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0127_${sn}_Quads.csv


# Clock ELINK 0 1,2,8
echo 0 1,2,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0128_${sn}_Quads.csv


# Clock ELINK 0 1,2,9
echo 0 1,2,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0129_${sn}_Quads.csv


# Clock ELINK 0 1,2,10
echo 0 1,2,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_01210_${sn}_Quads.csv


# Clock ELINK 0 1,2,11
echo 0 1,2,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_01211_${sn}_Quads.csv


# Clock ELINK 0 1,3,4
echo 0 1,3,4 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0134_${sn}_Quads.csv


# Clock ELINK 0 1,3,5
echo 0 1,3,5 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0135_${sn}_Quads.csv


# Clock ELINK 0 1,3,6
echo 0 1,3,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0136_${sn}_Quads.csv


# Clock ELINK 0 1,3,7
echo 0 1,3,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0137_${sn}_Quads.csv


# Clock ELINK 0 1,3,8
echo 0 1,3,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0138_${sn}_Quads.csv


# Clock ELINK 0 1,3,9
echo 0 1,3,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0139_${sn}_Quads.csv


# Clock ELINK 0 1,3,10
echo 0 1,3,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_01310_${sn}_Quads.csv


# Clock ELINK 0 1,3,11
echo 0 1,3,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_01311_${sn}_Quads.csv


# Clock ELINK 0 1,4,5
echo 0 1,4,5 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0145_${sn}_Quads.csv


# Clock ELINK 0 1,4,6
echo 0 1,4,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0146_${sn}_Quads.csv


# Clock ELINK 0 1,4,7
echo 0 1,4,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0147_${sn}_Quads.csv


# Clock ELINK 0 1,4,8
echo 0 1,4,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0148_${sn}_Quads.csv


# Clock ELINK 0 1,4,9
echo 0 1,4,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0149_${sn}_Quads.csv


# Clock ELINK 0 1,4,10
echo 0 1,4,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_01410_${sn}_Quads.csv


# Clock ELINK 0 1,4,11
echo 0 1,4,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_01411_${sn}_Quads.csv


# Clock ELINK 0 1,5,6
echo 0 1,5,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0156_${sn}_Quads.csv


# Clock ELINK 0 1,5,7
echo 0 1,5,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0157_${sn}_Quads.csv


# Clock ELINK 0 1,5,8
echo 0 1,5,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0158_${sn}_Quads.csv


# Clock ELINK 0 1,5,9
echo 0 1,5,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0159_${sn}_Quads.csv


# Clock ELINK 0 1,5,10
echo 0 1,5,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_01510_${sn}_Quads.csv


# Clock ELINK 0 1,5,11
echo 0 1,5,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_01511_${sn}_Quads.csv


# Clock ELINK 0 1,6,7
echo 0 1,6,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0167_${sn}_Quads.csv


# Clock ELINK 0 1,6,8
echo 0 1,6,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0168_${sn}_Quads.csv


# Clock ELINK 0 1,6,9
echo 0 1,6,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0169_${sn}_Quads.csv


# Clock ELINK 0 1,6,10
echo 0 1,6,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_01610_${sn}_Quads.csv


# Clock ELINK 0 1,6,11
echo 0 1,6,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_01611_${sn}_Quads.csv


# Clock ELINK 0 1,7,8
echo 0 1,7,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0178_${sn}_Quads.csv


# Clock ELINK 0 1,7,9
echo 0 1,7,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0179_${sn}_Quads.csv


# Clock ELINK 0 1,7,10
echo 0 1,7,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_01710_${sn}_Quads.csv


# Clock ELINK 0 1,7,11
echo 0 1,7,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_01711_${sn}_Quads.csv


# Clock ELINK 0 1,8,9
echo 0 1,8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0189_${sn}_Quads.csv


# Clock ELINK 0 1,8,10
echo 0 1,8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_01810_${sn}_Quads.csv


# Clock ELINK 0 1,8,11
echo 0 1,8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_01811_${sn}_Quads.csv


# Clock ELINK 0 1,9,10
echo 0 1,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_01910_${sn}_Quads.csv


# Clock ELINK 0 1,9,11
echo 0 1,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_01911_${sn}_Quads.csv


# Clock ELINK 0 1,10,11
echo 0 1,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_011011_${sn}_Quads.csv


# Clock ELINK 0 2,3,4
echo 0 2,3,4 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0234_${sn}_Quads.csv


# Clock ELINK 0 2,3,5
echo 0 2,3,5 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0235_${sn}_Quads.csv


# Clock ELINK 0 2,3,6
echo 0 2,3,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0236_${sn}_Quads.csv


# Clock ELINK 0 2,3,7
echo 0 2,3,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0237_${sn}_Quads.csv


# Clock ELINK 0 2,3,8
echo 0 2,3,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0238_${sn}_Quads.csv


# Clock ELINK 0 2,3,9
echo 0 2,3,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0239_${sn}_Quads.csv


# Clock ELINK 0 2,3,10
echo 0 2,3,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_02310_${sn}_Quads.csv


# Clock ELINK 0 2,3,11
echo 0 2,3,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_02311_${sn}_Quads.csv


# Clock ELINK 0 2,4,5
echo 0 2,4,5 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0245_${sn}_Quads.csv


# Clock ELINK 0 2,4,6
echo 0 2,4,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0246_${sn}_Quads.csv


# Clock ELINK 0 2,4,7
echo 0 2,4,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0247_${sn}_Quads.csv


# Clock ELINK 0 2,4,8
echo 0 2,4,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0248_${sn}_Quads.csv


# Clock ELINK 0 2,4,9
echo 0 2,4,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0249_${sn}_Quads.csv


# Clock ELINK 0 2,4,10
echo 0 2,4,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_02410_${sn}_Quads.csv


# Clock ELINK 0 2,4,11
echo 0 2,4,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_02411_${sn}_Quads.csv


# Clock ELINK 0 2,5,6
echo 0 2,5,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0256_${sn}_Quads.csv


# Clock ELINK 0 2,5,7
echo 0 2,5,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0257_${sn}_Quads.csv


# Clock ELINK 0 2,5,8
echo 0 2,5,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0258_${sn}_Quads.csv


# Clock ELINK 0 2,5,9
echo 0 2,5,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0259_${sn}_Quads.csv


# Clock ELINK 0 2,5,10
echo 0 2,5,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_02510_${sn}_Quads.csv


# Clock ELINK 0 2,5,11
echo 0 2,5,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_02511_${sn}_Quads.csv


# Clock ELINK 0 2,6,7
echo 0 2,6,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0267_${sn}_Quads.csv


# Clock ELINK 0 2,6,8
echo 0 2,6,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0268_${sn}_Quads.csv


# Clock ELINK 0 2,6,9
echo 0 2,6,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0269_${sn}_Quads.csv


# Clock ELINK 0 2,6,10
echo 0 2,6,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_02610_${sn}_Quads.csv


# Clock ELINK 0 2,6,11
echo 0 2,6,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_02611_${sn}_Quads.csv


# Clock ELINK 0 2,7,8
echo 0 2,7,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0278_${sn}_Quads.csv


# Clock ELINK 0 2,7,9
echo 0 2,7,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0279_${sn}_Quads.csv


# Clock ELINK 0 2,7,10
echo 0 2,7,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_02710_${sn}_Quads.csv


# Clock ELINK 0 2,7,11
echo 0 2,7,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_02711_${sn}_Quads.csv


# Clock ELINK 0 2,8,9
echo 0 2,8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0289_${sn}_Quads.csv


# Clock ELINK 0 2,8,10
echo 0 2,8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_02810_${sn}_Quads.csv


# Clock ELINK 0 2,8,11
echo 0 2,8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_02811_${sn}_Quads.csv


# Clock ELINK 0 2,9,10
echo 0 2,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_02910_${sn}_Quads.csv


# Clock ELINK 0 2,9,11
echo 0 2,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_02911_${sn}_Quads.csv


# Clock ELINK 0 2,10,11
echo 0 2,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_021011_${sn}_Quads.csv


# Clock ELINK 0 3,4,5
echo 0 3,4,5 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0345_${sn}_Quads.csv


# Clock ELINK 0 3,4,6
echo 0 3,4,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0346_${sn}_Quads.csv


# Clock ELINK 0 3,4,7
echo 0 3,4,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0347_${sn}_Quads.csv


# Clock ELINK 0 3,4,8
echo 0 3,4,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0348_${sn}_Quads.csv


# Clock ELINK 0 3,4,9
echo 0 3,4,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0349_${sn}_Quads.csv


# Clock ELINK 0 3,4,10
echo 0 3,4,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_03410_${sn}_Quads.csv


# Clock ELINK 0 3,4,11
echo 0 3,4,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_03411_${sn}_Quads.csv


# Clock ELINK 0 3,5,6
echo 0 3,5,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0356_${sn}_Quads.csv


# Clock ELINK 0 3,5,7
echo 0 3,5,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0357_${sn}_Quads.csv


# Clock ELINK 0 3,5,8
echo 0 3,5,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0358_${sn}_Quads.csv


# Clock ELINK 0 3,5,9
echo 0 3,5,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0359_${sn}_Quads.csv


# Clock ELINK 0 3,5,10
echo 0 3,5,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_03510_${sn}_Quads.csv


# Clock ELINK 0 3,5,11
echo 0 3,5,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_03511_${sn}_Quads.csv


# Clock ELINK 0 3,6,7
echo 0 3,6,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0367_${sn}_Quads.csv


# Clock ELINK 0 3,6,8
echo 0 3,6,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0368_${sn}_Quads.csv


# Clock ELINK 0 3,6,9
echo 0 3,6,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0369_${sn}_Quads.csv


# Clock ELINK 0 3,6,10
echo 0 3,6,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_03610_${sn}_Quads.csv


# Clock ELINK 0 3,6,11
echo 0 3,6,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_03611_${sn}_Quads.csv


# Clock ELINK 0 3,7,8
echo 0 3,7,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0378_${sn}_Quads.csv


# Clock ELINK 0 3,7,9
echo 0 3,7,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0379_${sn}_Quads.csv


# Clock ELINK 0 3,7,10
echo 0 3,7,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_03710_${sn}_Quads.csv


# Clock ELINK 0 3,7,11
echo 0 3,7,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_03711_${sn}_Quads.csv


# Clock ELINK 0 3,8,9
echo 0 3,8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0389_${sn}_Quads.csv


# Clock ELINK 0 3,8,10
echo 0 3,8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_03810_${sn}_Quads.csv


# Clock ELINK 0 3,8,11
echo 0 3,8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_03811_${sn}_Quads.csv


# Clock ELINK 0 3,9,10
echo 0 3,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_03910_${sn}_Quads.csv


# Clock ELINK 0 3,9,11
echo 0 3,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_03911_${sn}_Quads.csv


# Clock ELINK 0 3,10,11
echo 0 3,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_031011_${sn}_Quads.csv


# Clock ELINK 0 4,5,6
echo 0 4,5,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0456_${sn}_Quads.csv


# Clock ELINK 0 4,5,7
echo 0 4,5,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0457_${sn}_Quads.csv


# Clock ELINK 0 4,5,8
echo 0 4,5,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0458_${sn}_Quads.csv


# Clock ELINK 0 4,5,9
echo 0 4,5,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0459_${sn}_Quads.csv


# Clock ELINK 0 4,5,10
echo 0 4,5,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_04510_${sn}_Quads.csv


# Clock ELINK 0 4,5,11
echo 0 4,5,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_04511_${sn}_Quads.csv


# Clock ELINK 0 4,6,7
echo 0 4,6,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0467_${sn}_Quads.csv


# Clock ELINK 0 4,6,8
echo 0 4,6,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0468_${sn}_Quads.csv


# Clock ELINK 0 4,6,9
echo 0 4,6,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0469_${sn}_Quads.csv


# Clock ELINK 0 4,6,10
echo 0 4,6,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_04610_${sn}_Quads.csv


# Clock ELINK 0 4,6,11
echo 0 4,6,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_04611_${sn}_Quads.csv


# Clock ELINK 0 4,7,8
echo 0 4,7,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0478_${sn}_Quads.csv


# Clock ELINK 0 4,7,9
echo 0 4,7,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0479_${sn}_Quads.csv


# Clock ELINK 0 4,7,10
echo 0 4,7,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_04710_${sn}_Quads.csv


# Clock ELINK 0 4,7,11
echo 0 4,7,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_04711_${sn}_Quads.csv


# Clock ELINK 0 4,8,9
echo 0 4,8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0489_${sn}_Quads.csv


# Clock ELINK 0 4,8,10
echo 0 4,8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_04810_${sn}_Quads.csv


# Clock ELINK 0 4,8,11
echo 0 4,8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_04811_${sn}_Quads.csv


# Clock ELINK 0 4,9,10
echo 0 4,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_04910_${sn}_Quads.csv


# Clock ELINK 0 4,9,11
echo 0 4,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_04911_${sn}_Quads.csv


# Clock ELINK 0 4,10,11
echo 0 4,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_041011_${sn}_Quads.csv


# Clock ELINK 0 5,6,7
echo 0 5,6,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0567_${sn}_Quads.csv


# Clock ELINK 0 5,6,8
echo 0 5,6,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0568_${sn}_Quads.csv


# Clock ELINK 0 5,6,9
echo 0 5,6,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0569_${sn}_Quads.csv


# Clock ELINK 0 5,6,10
echo 0 5,6,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_05610_${sn}_Quads.csv


# Clock ELINK 0 5,6,11
echo 0 5,6,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_05611_${sn}_Quads.csv


# Clock ELINK 0 5,7,8
echo 0 5,7,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0578_${sn}_Quads.csv


# Clock ELINK 0 5,7,9
echo 0 5,7,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0579_${sn}_Quads.csv


# Clock ELINK 0 5,7,10
echo 0 5,7,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_05710_${sn}_Quads.csv


# Clock ELINK 0 5,7,11
echo 0 5,7,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_05711_${sn}_Quads.csv


# Clock ELINK 0 5,8,9
echo 0 5,8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0589_${sn}_Quads.csv


# Clock ELINK 0 5,8,10
echo 0 5,8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 0 1 1 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_05810_${sn}_Quads.csv


# Clock ELINK 0 5,8,11
echo 0 5,8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 1 1 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_05811_${sn}_Quads.csv


# Clock ELINK 0 5,9,10
echo 0 5,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_05910_${sn}_Quads.csv


# Clock ELINK 0 5,9,11
echo 0 5,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_05911_${sn}_Quads.csv


# Clock ELINK 0 5,10,11
echo 0 5,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 0 1 0 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_051011_${sn}_Quads.csv


# Clock ELINK 0 6,7,8
echo 0 6,7,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0678_${sn}_Quads.csv


# Clock ELINK 0 6,7,9
echo 0 6,7,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0679_${sn}_Quads.csv


# Clock ELINK 0 6,7,10
echo 0 6,7,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_06710_${sn}_Quads.csv


# Clock ELINK 0 6,7,11
echo 0 6,7,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_06711_${sn}_Quads.csv


# Clock ELINK 0 6,8,9
echo 0 6,8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0689_${sn}_Quads.csv


# Clock ELINK 0 6,8,10
echo 0 6,8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_06810_${sn}_Quads.csv


# Clock ELINK 0 6,8,11
echo 0 6,8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_06811_${sn}_Quads.csv


# Clock ELINK 0 6,9,10
echo 0 6,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_06910_${sn}_Quads.csv


# Clock ELINK 0 6,9,11
echo 0 6,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_06911_${sn}_Quads.csv


# Clock ELINK 0 6,10,11
echo 0 6,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_061011_${sn}_Quads.csv


# Clock ELINK 0 7,8,9
echo 0 7,8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_0789_${sn}_Quads.csv


# Clock ELINK 0 7,8,10
echo 0 7,8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_07810_${sn}_Quads.csv


# Clock ELINK 0 7,8,11
echo 0 7,8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_07811_${sn}_Quads.csv


# Clock ELINK 0 7,9,10
echo 0 7,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_07910_${sn}_Quads.csv


# Clock ELINK 0 7,9,11
echo 0 7,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_07911_${sn}_Quads.csv


# Clock ELINK 0 7,10,11
echo 0 7,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_071011_${sn}_Quads.csv


# Clock ELINK 0 8,9,10
echo 0 8,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_08910_${sn}_Quads.csv


# Clock ELINK 0 8,9,11
echo 0 8,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_08911_${sn}_Quads.csv


# Clock ELINK 0 8,10,11
echo 0 8,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 1 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_081011_${sn}_Quads.csv


# Clock ELINK 0 9,10,11
echo 0 9,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_091011_${sn}_Quads.csv


# Clock ELINK 1 2,3,4
echo 1 2,3,4 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1234_${sn}_Quads.csv


# Clock ELINK 1 2,3,5
echo 1 2,3,5 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1235_${sn}_Quads.csv


# Clock ELINK 1 2,3,6
echo 1 2,3,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1236_${sn}_Quads.csv


# Clock ELINK 1 2,3,7
echo 1 2,3,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1237_${sn}_Quads.csv


# Clock ELINK 1 2,3,8
echo 1 2,3,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1238_${sn}_Quads.csv


# Clock ELINK 1 2,3,9
echo 1 2,3,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1239_${sn}_Quads.csv


# Clock ELINK 1 2,3,10
echo 1 2,3,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_12310_${sn}_Quads.csv


# Clock ELINK 1 2,3,11
echo 1 2,3,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_12311_${sn}_Quads.csv


# Clock ELINK 1 2,4,5
echo 1 2,4,5 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1245_${sn}_Quads.csv


# Clock ELINK 1 2,4,6
echo 1 2,4,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1246_${sn}_Quads.csv


# Clock ELINK 1 2,4,7
echo 1 2,4,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1247_${sn}_Quads.csv


# Clock ELINK 1 2,4,8
echo 1 2,4,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1248_${sn}_Quads.csv


# Clock ELINK 1 2,4,9
echo 1 2,4,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1249_${sn}_Quads.csv


# Clock ELINK 1 2,4,10
echo 1 2,4,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_12410_${sn}_Quads.csv


# Clock ELINK 1 2,4,11
echo 1 2,4,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_12411_${sn}_Quads.csv


# Clock ELINK 1 2,5,6
echo 1 2,5,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1256_${sn}_Quads.csv


# Clock ELINK 1 2,5,7
echo 1 2,5,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1257_${sn}_Quads.csv


# Clock ELINK 1 2,5,8
echo 1 2,5,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1258_${sn}_Quads.csv


# Clock ELINK 1 2,5,9
echo 1 2,5,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1259_${sn}_Quads.csv


# Clock ELINK 1 2,5,10
echo 1 2,5,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_12510_${sn}_Quads.csv


# Clock ELINK 1 2,5,11
echo 1 2,5,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_12511_${sn}_Quads.csv


# Clock ELINK 1 2,6,7
echo 1 2,6,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1267_${sn}_Quads.csv


# Clock ELINK 1 2,6,8
echo 1 2,6,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1268_${sn}_Quads.csv


# Clock ELINK 1 2,6,9
echo 1 2,6,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1269_${sn}_Quads.csv


# Clock ELINK 1 2,6,10
echo 1 2,6,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_12610_${sn}_Quads.csv


# Clock ELINK 1 2,6,11
echo 1 2,6,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_12611_${sn}_Quads.csv


# Clock ELINK 1 2,7,8
echo 1 2,7,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1278_${sn}_Quads.csv


# Clock ELINK 1 2,7,9
echo 1 2,7,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1279_${sn}_Quads.csv


# Clock ELINK 1 2,7,10
echo 1 2,7,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_12710_${sn}_Quads.csv


# Clock ELINK 1 2,7,11
echo 1 2,7,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_12711_${sn}_Quads.csv


# Clock ELINK 1 2,8,9
echo 1 2,8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1289_${sn}_Quads.csv


# Clock ELINK 1 2,8,10
echo 1 2,8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_12810_${sn}_Quads.csv


# Clock ELINK 1 2,8,11
echo 1 2,8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_12811_${sn}_Quads.csv


# Clock ELINK 1 2,9,10
echo 1 2,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_12910_${sn}_Quads.csv


# Clock ELINK 1 2,9,11
echo 1 2,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_12911_${sn}_Quads.csv


# Clock ELINK 1 2,10,11
echo 1 2,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_121011_${sn}_Quads.csv


# Clock ELINK 1 3,4,5
echo 1 3,4,5 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1345_${sn}_Quads.csv


# Clock ELINK 1 3,4,6
echo 1 3,4,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1346_${sn}_Quads.csv


# Clock ELINK 1 3,4,7
echo 1 3,4,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1347_${sn}_Quads.csv


# Clock ELINK 1 3,4,8
echo 1 3,4,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1348_${sn}_Quads.csv


# Clock ELINK 1 3,4,9
echo 1 3,4,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1349_${sn}_Quads.csv


# Clock ELINK 1 3,4,10
echo 1 3,4,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_13410_${sn}_Quads.csv


# Clock ELINK 1 3,4,11
echo 1 3,4,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_13411_${sn}_Quads.csv


# Clock ELINK 1 3,5,6
echo 1 3,5,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1356_${sn}_Quads.csv


# Clock ELINK 1 3,5,7
echo 1 3,5,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1357_${sn}_Quads.csv


# Clock ELINK 1 3,5,8
echo 1 3,5,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1358_${sn}_Quads.csv


# Clock ELINK 1 3,5,9
echo 1 3,5,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1359_${sn}_Quads.csv


# Clock ELINK 1 3,5,10
echo 1 3,5,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_13510_${sn}_Quads.csv


# Clock ELINK 1 3,5,11
echo 1 3,5,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_13511_${sn}_Quads.csv


# Clock ELINK 1 3,6,7
echo 1 3,6,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1367_${sn}_Quads.csv


# Clock ELINK 1 3,6,8
echo 1 3,6,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1368_${sn}_Quads.csv


# Clock ELINK 1 3,6,9
echo 1 3,6,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1369_${sn}_Quads.csv


# Clock ELINK 1 3,6,10
echo 1 3,6,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_13610_${sn}_Quads.csv


# Clock ELINK 1 3,6,11
echo 1 3,6,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_13611_${sn}_Quads.csv


# Clock ELINK 1 3,7,8
echo 1 3,7,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1378_${sn}_Quads.csv


# Clock ELINK 1 3,7,9
echo 1 3,7,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1379_${sn}_Quads.csv


# Clock ELINK 1 3,7,10
echo 1 3,7,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_13710_${sn}_Quads.csv


# Clock ELINK 1 3,7,11
echo 1 3,7,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_13711_${sn}_Quads.csv


# Clock ELINK 1 3,8,9
echo 1 3,8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1389_${sn}_Quads.csv


# Clock ELINK 1 3,8,10
echo 1 3,8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_13810_${sn}_Quads.csv


# Clock ELINK 1 3,8,11
echo 1 3,8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_13811_${sn}_Quads.csv


# Clock ELINK 1 3,9,10
echo 1 3,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_13910_${sn}_Quads.csv


# Clock ELINK 1 3,9,11
echo 1 3,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_13911_${sn}_Quads.csv


# Clock ELINK 1 3,10,11
echo 1 3,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_131011_${sn}_Quads.csv


# Clock ELINK 1 4,5,6
echo 1 4,5,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1456_${sn}_Quads.csv


# Clock ELINK 1 4,5,7
echo 1 4,5,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1457_${sn}_Quads.csv


# Clock ELINK 1 4,5,8
echo 1 4,5,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1458_${sn}_Quads.csv


# Clock ELINK 1 4,5,9
echo 1 4,5,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1459_${sn}_Quads.csv


# Clock ELINK 1 4,5,10
echo 1 4,5,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_14510_${sn}_Quads.csv


# Clock ELINK 1 4,5,11
echo 1 4,5,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_14511_${sn}_Quads.csv


# Clock ELINK 1 4,6,7
echo 1 4,6,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1467_${sn}_Quads.csv


# Clock ELINK 1 4,6,8
echo 1 4,6,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1468_${sn}_Quads.csv


# Clock ELINK 1 4,6,9
echo 1 4,6,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1469_${sn}_Quads.csv


# Clock ELINK 1 4,6,10
echo 1 4,6,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_14610_${sn}_Quads.csv


# Clock ELINK 1 4,6,11
echo 1 4,6,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_14611_${sn}_Quads.csv


# Clock ELINK 1 4,7,8
echo 1 4,7,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1478_${sn}_Quads.csv


# Clock ELINK 1 4,7,9
echo 1 4,7,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1479_${sn}_Quads.csv


# Clock ELINK 1 4,7,10
echo 1 4,7,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 1 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_14710_${sn}_Quads.csv


# Clock ELINK 1 4,7,11
echo 1 4,7,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_14711_${sn}_Quads.csv


# Clock ELINK 1 4,8,9
echo 1 4,8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1489_${sn}_Quads.csv


# Clock ELINK 1 4,8,10
echo 1 4,8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_14810_${sn}_Quads.csv


# Clock ELINK 1 4,8,11
echo 1 4,8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_14811_${sn}_Quads.csv


# Clock ELINK 1 4,9,10
echo 1 4,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_14910_${sn}_Quads.csv


# Clock ELINK 1 4,9,11
echo 1 4,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_14911_${sn}_Quads.csv


# Clock ELINK 1 4,10,11
echo 1 4,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_141011_${sn}_Quads.csv


# Clock ELINK 1 5,6,7
echo 1 5,6,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1567_${sn}_Quads.csv


# Clock ELINK 1 5,6,8
echo 1 5,6,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1568_${sn}_Quads.csv


# Clock ELINK 1 5,6,9
echo 1 5,6,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1569_${sn}_Quads.csv


# Clock ELINK 1 5,6,10
echo 1 5,6,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_15610_${sn}_Quads.csv


# Clock ELINK 1 5,6,11
echo 1 5,6,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_15611_${sn}_Quads.csv


# Clock ELINK 1 5,7,8
echo 1 5,7,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1578_${sn}_Quads.csv


# Clock ELINK 1 5,7,9
echo 1 5,7,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1579_${sn}_Quads.csv


# Clock ELINK 1 5,7,10
echo 1 5,7,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_15710_${sn}_Quads.csv


# Clock ELINK 1 5,7,11
echo 1 5,7,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_15711_${sn}_Quads.csv


# Clock ELINK 1 5,8,9
echo 1 5,8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1589_${sn}_Quads.csv


# Clock ELINK 1 5,8,10
echo 1 5,8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 0 1 1 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_15810_${sn}_Quads.csv


# Clock ELINK 1 5,8,11
echo 1 5,8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 1 1 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_15811_${sn}_Quads.csv


# Clock ELINK 1 5,9,10
echo 1 5,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_15910_${sn}_Quads.csv


# Clock ELINK 1 5,9,11
echo 1 5,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_15911_${sn}_Quads.csv


# Clock ELINK 1 5,10,11
echo 1 5,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 0 1 0 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_151011_${sn}_Quads.csv


# Clock ELINK 1 6,7,8
echo 1 6,7,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1678_${sn}_Quads.csv


# Clock ELINK 1 6,7,9
echo 1 6,7,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1679_${sn}_Quads.csv


# Clock ELINK 1 6,7,10
echo 1 6,7,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_16710_${sn}_Quads.csv


# Clock ELINK 1 6,7,11
echo 1 6,7,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_16711_${sn}_Quads.csv


# Clock ELINK 1 6,8,9
echo 1 6,8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1689_${sn}_Quads.csv


# Clock ELINK 1 6,8,10
echo 1 6,8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_16810_${sn}_Quads.csv


# Clock ELINK 1 6,8,11
echo 1 6,8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_16811_${sn}_Quads.csv


# Clock ELINK 1 6,9,10
echo 1 6,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_16910_${sn}_Quads.csv


# Clock ELINK 1 6,9,11
echo 1 6,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_16911_${sn}_Quads.csv


# Clock ELINK 1 6,10,11
echo 1 6,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_161011_${sn}_Quads.csv


# Clock ELINK 1 7,8,9
echo 1 7,8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_1789_${sn}_Quads.csv


# Clock ELINK 1 7,8,10
echo 1 7,8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_17810_${sn}_Quads.csv


# Clock ELINK 1 7,8,11
echo 1 7,8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_17811_${sn}_Quads.csv


# Clock ELINK 1 7,9,10
echo 1 7,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_17910_${sn}_Quads.csv


# Clock ELINK 1 7,9,11
echo 1 7,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_17911_${sn}_Quads.csv


# Clock ELINK 1 7,10,11
echo 1 7,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_171011_${sn}_Quads.csv


# Clock ELINK 1 8,9,10
echo 1 8,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_18910_${sn}_Quads.csv


# Clock ELINK 1 8,9,11
echo 1 8,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_18911_${sn}_Quads.csv


# Clock ELINK 1 8,10,11
echo 1 8,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 1 0 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 1 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_181011_${sn}_Quads.csv


# Clock ELINK 1 9,10,11
echo 1 9,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_191011_${sn}_Quads.csv


# Clock ELINK 2 3,4,5
echo 2 3,4,5 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2345_${sn}_Quads.csv


# Clock ELINK 2 3,4,6
echo 2 3,4,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2346_${sn}_Quads.csv


# Clock ELINK 2 3,4,7
echo 2 3,4,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2347_${sn}_Quads.csv


# Clock ELINK 2 3,4,8
echo 2 3,4,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2348_${sn}_Quads.csv


# Clock ELINK 2 3,4,9
echo 2 3,4,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2349_${sn}_Quads.csv


# Clock ELINK 2 3,4,10
echo 2 3,4,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_23410_${sn}_Quads.csv


# Clock ELINK 2 3,4,11
echo 2 3,4,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_23411_${sn}_Quads.csv


# Clock ELINK 2 3,5,6
echo 2 3,5,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2356_${sn}_Quads.csv


# Clock ELINK 2 3,5,7
echo 2 3,5,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2357_${sn}_Quads.csv


# Clock ELINK 2 3,5,8
echo 2 3,5,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2358_${sn}_Quads.csv


# Clock ELINK 2 3,5,9
echo 2 3,5,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2359_${sn}_Quads.csv


# Clock ELINK 2 3,5,10
echo 2 3,5,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_23510_${sn}_Quads.csv


# Clock ELINK 2 3,5,11
echo 2 3,5,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_23511_${sn}_Quads.csv


# Clock ELINK 2 3,6,7
echo 2 3,6,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2367_${sn}_Quads.csv


# Clock ELINK 2 3,6,8
echo 2 3,6,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2368_${sn}_Quads.csv


# Clock ELINK 2 3,6,9
echo 2 3,6,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2369_${sn}_Quads.csv


# Clock ELINK 2 3,6,10
echo 2 3,6,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_23610_${sn}_Quads.csv


# Clock ELINK 2 3,6,11
echo 2 3,6,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_23611_${sn}_Quads.csv


# Clock ELINK 2 3,7,8
echo 2 3,7,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2378_${sn}_Quads.csv


# Clock ELINK 2 3,7,9
echo 2 3,7,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2379_${sn}_Quads.csv


# Clock ELINK 2 3,7,10
echo 2 3,7,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_23710_${sn}_Quads.csv


# Clock ELINK 2 3,7,11
echo 2 3,7,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_23711_${sn}_Quads.csv


# Clock ELINK 2 3,8,9
echo 2 3,8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2389_${sn}_Quads.csv


# Clock ELINK 2 3,8,10
echo 2 3,8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_23810_${sn}_Quads.csv


# Clock ELINK 2 3,8,11
echo 2 3,8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_23811_${sn}_Quads.csv


# Clock ELINK 2 3,9,10
echo 2 3,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_23910_${sn}_Quads.csv


# Clock ELINK 2 3,9,11
echo 2 3,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_23911_${sn}_Quads.csv


# Clock ELINK 2 3,10,11
echo 2 3,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_231011_${sn}_Quads.csv


# Clock ELINK 2 4,5,6
echo 2 4,5,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2456_${sn}_Quads.csv


# Clock ELINK 2 4,5,7
echo 2 4,5,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2457_${sn}_Quads.csv


# Clock ELINK 2 4,5,8
echo 2 4,5,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2458_${sn}_Quads.csv


# Clock ELINK 2 4,5,9
echo 2 4,5,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2459_${sn}_Quads.csv


# Clock ELINK 2 4,5,10
echo 2 4,5,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_24510_${sn}_Quads.csv


# Clock ELINK 2 4,5,11
echo 2 4,5,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_24511_${sn}_Quads.csv


# Clock ELINK 2 4,6,7
echo 2 4,6,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2467_${sn}_Quads.csv


# Clock ELINK 2 4,6,8
echo 2 4,6,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2468_${sn}_Quads.csv


# Clock ELINK 2 4,6,9
echo 2 4,6,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2469_${sn}_Quads.csv


# Clock ELINK 2 4,6,10
echo 2 4,6,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_24610_${sn}_Quads.csv


# Clock ELINK 2 4,6,11
echo 2 4,6,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_24611_${sn}_Quads.csv


# Clock ELINK 2 4,7,8
echo 2 4,7,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2478_${sn}_Quads.csv


# Clock ELINK 2 4,7,9
echo 2 4,7,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2479_${sn}_Quads.csv


# Clock ELINK 2 4,7,10
echo 2 4,7,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_24710_${sn}_Quads.csv


# Clock ELINK 2 4,7,11
echo 2 4,7,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_24711_${sn}_Quads.csv


# Clock ELINK 2 4,8,9
echo 2 4,8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2489_${sn}_Quads.csv


# Clock ELINK 2 4,8,10
echo 2 4,8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_24810_${sn}_Quads.csv


# Clock ELINK 2 4,8,11
echo 2 4,8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_24811_${sn}_Quads.csv


# Clock ELINK 2 4,9,10
echo 2 4,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_24910_${sn}_Quads.csv


# Clock ELINK 2 4,9,11
echo 2 4,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_24911_${sn}_Quads.csv


# Clock ELINK 2 4,10,11
echo 2 4,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_241011_${sn}_Quads.csv


# Clock ELINK 2 5,6,7
echo 2 5,6,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2567_${sn}_Quads.csv


# Clock ELINK 2 5,6,8
echo 2 5,6,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2568_${sn}_Quads.csv


# Clock ELINK 2 5,6,9
echo 2 5,6,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2569_${sn}_Quads.csv


# Clock ELINK 2 5,6,10
echo 2 5,6,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_25610_${sn}_Quads.csv


# Clock ELINK 2 5,6,11
echo 2 5,6,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_25611_${sn}_Quads.csv


# Clock ELINK 2 5,7,8
echo 2 5,7,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2578_${sn}_Quads.csv


# Clock ELINK 2 5,7,9
echo 2 5,7,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2579_${sn}_Quads.csv


# Clock ELINK 2 5,7,10
echo 2 5,7,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_25710_${sn}_Quads.csv


# Clock ELINK 2 5,7,11
echo 2 5,7,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_25711_${sn}_Quads.csv


# Clock ELINK 2 5,8,9
echo 2 5,8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2589_${sn}_Quads.csv


# Clock ELINK 2 5,8,10
echo 2 5,8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 1 1 1 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_25810_${sn}_Quads.csv


# Clock ELINK 2 5,8,11
echo 2 5,8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 1 1 1 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_25811_${sn}_Quads.csv


# Clock ELINK 2 5,9,10
echo 2 5,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_25910_${sn}_Quads.csv


# Clock ELINK 2 5,9,11
echo 2 5,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_25911_${sn}_Quads.csv


# Clock ELINK 2 5,10,11
echo 2 5,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 1 1 0 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_251011_${sn}_Quads.csv


# Clock ELINK 2 6,7,8
echo 2 6,7,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2678_${sn}_Quads.csv


# Clock ELINK 2 6,7,9
echo 2 6,7,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2679_${sn}_Quads.csv


# Clock ELINK 2 6,7,10
echo 2 6,7,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_26710_${sn}_Quads.csv


# Clock ELINK 2 6,7,11
echo 2 6,7,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_26711_${sn}_Quads.csv


# Clock ELINK 2 6,8,9
echo 2 6,8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2689_${sn}_Quads.csv


# Clock ELINK 2 6,8,10
echo 2 6,8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_26810_${sn}_Quads.csv


# Clock ELINK 2 6,8,11
echo 2 6,8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_26811_${sn}_Quads.csv


# Clock ELINK 2 6,9,10
echo 2 6,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_26910_${sn}_Quads.csv


# Clock ELINK 2 6,9,11
echo 2 6,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_26911_${sn}_Quads.csv


# Clock ELINK 2 6,10,11
echo 2 6,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_261011_${sn}_Quads.csv


# Clock ELINK 2 7,8,9
echo 2 7,8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_2789_${sn}_Quads.csv


# Clock ELINK 2 7,8,10
echo 2 7,8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_27810_${sn}_Quads.csv


# Clock ELINK 2 7,8,11
echo 2 7,8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_27811_${sn}_Quads.csv


# Clock ELINK 2 7,9,10
echo 2 7,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_27910_${sn}_Quads.csv


# Clock ELINK 2 7,9,11
echo 2 7,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_27911_${sn}_Quads.csv


# Clock ELINK 2 7,10,11
echo 2 7,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_271011_${sn}_Quads.csv


# Clock ELINK 2 8,9,10
echo 2 8,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_28910_${sn}_Quads.csv


# Clock ELINK 2 8,9,11
echo 2 8,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_28911_${sn}_Quads.csv


# Clock ELINK 2 8,10,11
echo 2 8,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 1 0 1 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_281011_${sn}_Quads.csv


# Clock ELINK 2 9,10,11
echo 2 9,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_291011_${sn}_Quads.csv


# Clock ELINK 3 4,5,6
echo 3 4,5,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_3456_${sn}_Quads.csv


# Clock ELINK 3 4,5,7
echo 3 4,5,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_3457_${sn}_Quads.csv


# Clock ELINK 3 4,5,8
echo 3 4,5,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_3458_${sn}_Quads.csv


# Clock ELINK 3 4,5,9
echo 3 4,5,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_3459_${sn}_Quads.csv


# Clock ELINK 3 4,5,10
echo 3 4,5,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_34510_${sn}_Quads.csv


# Clock ELINK 3 4,5,11
echo 3 4,5,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_34511_${sn}_Quads.csv


# Clock ELINK 3 4,6,7
echo 3 4,6,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_3467_${sn}_Quads.csv


# Clock ELINK 3 4,6,8
echo 3 4,6,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_3468_${sn}_Quads.csv


# Clock ELINK 3 4,6,9
echo 3 4,6,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_3469_${sn}_Quads.csv


# Clock ELINK 3 4,6,10
echo 3 4,6,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_34610_${sn}_Quads.csv


# Clock ELINK 3 4,6,11
echo 3 4,6,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_34611_${sn}_Quads.csv


# Clock ELINK 3 4,7,8
echo 3 4,7,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_3478_${sn}_Quads.csv


# Clock ELINK 3 4,7,9
echo 3 4,7,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_3479_${sn}_Quads.csv


# Clock ELINK 3 4,7,10
echo 3 4,7,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_34710_${sn}_Quads.csv


# Clock ELINK 3 4,7,11
echo 3 4,7,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_34711_${sn}_Quads.csv


# Clock ELINK 3 4,8,9
echo 3 4,8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_3489_${sn}_Quads.csv


# Clock ELINK 3 4,8,10
echo 3 4,8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_34810_${sn}_Quads.csv


# Clock ELINK 3 4,8,11
echo 3 4,8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_34811_${sn}_Quads.csv


# Clock ELINK 3 4,9,10
echo 3 4,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_34910_${sn}_Quads.csv


# Clock ELINK 3 4,9,11
echo 3 4,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_34911_${sn}_Quads.csv


# Clock ELINK 3 4,10,11
echo 3 4,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_341011_${sn}_Quads.csv


# Clock ELINK 3 5,6,7
echo 3 5,6,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_3567_${sn}_Quads.csv


# Clock ELINK 3 5,6,8
echo 3 5,6,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_3568_${sn}_Quads.csv


# Clock ELINK 3 5,6,9
echo 3 5,6,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_3569_${sn}_Quads.csv


# Clock ELINK 3 5,6,10
echo 3 5,6,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_35610_${sn}_Quads.csv


# Clock ELINK 3 5,6,11
echo 3 5,6,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_35611_${sn}_Quads.csv


# Clock ELINK 3 5,7,8
echo 3 5,7,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_3578_${sn}_Quads.csv


# Clock ELINK 3 5,7,9
echo 3 5,7,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_3579_${sn}_Quads.csv


# Clock ELINK 3 5,7,10
echo 3 5,7,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_35710_${sn}_Quads.csv


# Clock ELINK 3 5,7,11
echo 3 5,7,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_35711_${sn}_Quads.csv


# Clock ELINK 3 5,8,9
echo 3 5,8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_3589_${sn}_Quads.csv


# Clock ELINK 3 5,8,10
echo 3 5,8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 0 1 1 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_35810_${sn}_Quads.csv


# Clock ELINK 3 5,8,11
echo 3 5,8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 1 1 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_35811_${sn}_Quads.csv


# Clock ELINK 3 5,9,10
echo 3 5,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_35910_${sn}_Quads.csv


# Clock ELINK 3 5,9,11
echo 3 5,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_35911_${sn}_Quads.csv


# Clock ELINK 3 5,10,11
echo 3 5,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 0 1 0 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_351011_${sn}_Quads.csv


# Clock ELINK 3 6,7,8
echo 3 6,7,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_3678_${sn}_Quads.csv


# Clock ELINK 3 6,7,9
echo 3 6,7,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_3679_${sn}_Quads.csv


# Clock ELINK 3 6,7,10
echo 3 6,7,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_36710_${sn}_Quads.csv


# Clock ELINK 3 6,7,11
echo 3 6,7,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_36711_${sn}_Quads.csv


# Clock ELINK 3 6,8,9
echo 3 6,8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_3689_${sn}_Quads.csv


# Clock ELINK 3 6,8,10
echo 3 6,8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_36810_${sn}_Quads.csv


# Clock ELINK 3 6,8,11
echo 3 6,8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_36811_${sn}_Quads.csv


# Clock ELINK 3 6,9,10
echo 3 6,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_36910_${sn}_Quads.csv


# Clock ELINK 3 6,9,11
echo 3 6,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_36911_${sn}_Quads.csv


# Clock ELINK 3 6,10,11
echo 3 6,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_361011_${sn}_Quads.csv


# Clock ELINK 3 7,8,9
echo 3 7,8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_3789_${sn}_Quads.csv


# Clock ELINK 3 7,8,10
echo 3 7,8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_37810_${sn}_Quads.csv


# Clock ELINK 3 7,8,11
echo 3 7,8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_37811_${sn}_Quads.csv


# Clock ELINK 3 7,9,10
echo 3 7,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_37910_${sn}_Quads.csv


# Clock ELINK 3 7,9,11
echo 3 7,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_37911_${sn}_Quads.csv


# Clock ELINK 3 7,10,11
echo 3 7,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_371011_${sn}_Quads.csv


# Clock ELINK 3 8,9,10
echo 3 8,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_38910_${sn}_Quads.csv


# Clock ELINK 3 8,9,11
echo 3 8,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_38911_${sn}_Quads.csv


# Clock ELINK 3 8,10,11
echo 3 8,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 1 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_381011_${sn}_Quads.csv


# Clock ELINK 3 9,10,11
echo 3 9,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_391011_${sn}_Quads.csv


# Clock ELINK 4 5,6,7
echo 4 5,6,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_4567_${sn}_Quads.csv


# Clock ELINK 4 5,6,8
echo 4 5,6,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_4568_${sn}_Quads.csv


# Clock ELINK 4 5,6,9
echo 4 5,6,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_4569_${sn}_Quads.csv


# Clock ELINK 4 5,6,10
echo 4 5,6,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_45610_${sn}_Quads.csv


# Clock ELINK 4 5,6,11
echo 4 5,6,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_45611_${sn}_Quads.csv


# Clock ELINK 4 5,7,8
echo 4 5,7,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_4578_${sn}_Quads.csv


# Clock ELINK 4 5,7,9
echo 4 5,7,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_4579_${sn}_Quads.csv


# Clock ELINK 4 5,7,10
echo 4 5,7,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_45710_${sn}_Quads.csv


# Clock ELINK 4 5,7,11
echo 4 5,7,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_45711_${sn}_Quads.csv


# Clock ELINK 4 5,8,9
echo 4 5,8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_4589_${sn}_Quads.csv


# Clock ELINK 4 5,8,10
echo 4 5,8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 0 1 1 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_45810_${sn}_Quads.csv


# Clock ELINK 4 5,8,11
echo 4 5,8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 1 1 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_45811_${sn}_Quads.csv


# Clock ELINK 4 5,9,10
echo 4 5,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_45910_${sn}_Quads.csv


# Clock ELINK 4 5,9,11
echo 4 5,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_45911_${sn}_Quads.csv


# Clock ELINK 4 5,10,11
echo 4 5,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 0 1 0 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_451011_${sn}_Quads.csv


# Clock ELINK 4 6,7,8
echo 4 6,7,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_4678_${sn}_Quads.csv


# Clock ELINK 4 6,7,9
echo 4 6,7,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_4679_${sn}_Quads.csv


# Clock ELINK 4 6,7,10
echo 4 6,7,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_46710_${sn}_Quads.csv


# Clock ELINK 4 6,7,11
echo 4 6,7,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_46711_${sn}_Quads.csv


# Clock ELINK 4 6,8,9
echo 4 6,8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_4689_${sn}_Quads.csv


# Clock ELINK 4 6,8,10
echo 4 6,8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_46810_${sn}_Quads.csv


# Clock ELINK 4 6,8,11
echo 4 6,8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_46811_${sn}_Quads.csv


# Clock ELINK 4 6,9,10
echo 4 6,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_46910_${sn}_Quads.csv


# Clock ELINK 4 6,9,11
echo 4 6,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_46911_${sn}_Quads.csv


# Clock ELINK 4 6,10,11
echo 4 6,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_461011_${sn}_Quads.csv


# Clock ELINK 4 7,8,9
echo 4 7,8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_4789_${sn}_Quads.csv


# Clock ELINK 4 7,8,10
echo 4 7,8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_47810_${sn}_Quads.csv


# Clock ELINK 4 7,8,11
echo 4 7,8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_47811_${sn}_Quads.csv


# Clock ELINK 4 7,9,10
echo 4 7,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_47910_${sn}_Quads.csv


# Clock ELINK 4 7,9,11
echo 4 7,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_47911_${sn}_Quads.csv


# Clock ELINK 4 7,10,11
echo 4 7,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_471011_${sn}_Quads.csv


# Clock ELINK 4 8,9,10
echo 4 8,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_48910_${sn}_Quads.csv


# Clock ELINK 4 8,9,11
echo 4 8,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_48911_${sn}_Quads.csv


# Clock ELINK 4 8,10,11
echo 4 8,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 1 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_481011_${sn}_Quads.csv


# Clock ELINK 4 9,10,11
echo 4 9,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_491011_${sn}_Quads.csv


# Clock ELINK 5 6,7,8
echo 5 6,7,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_5678_${sn}_Quads.csv


# Clock ELINK 5 6,7,9
echo 5 6,7,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_5679_${sn}_Quads.csv


# Clock ELINK 5 6,7,10
echo 5 6,7,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_56710_${sn}_Quads.csv


# Clock ELINK 5 6,7,11
echo 5 6,7,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_56711_${sn}_Quads.csv


# Clock ELINK 5 6,8,9
echo 5 6,8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_5689_${sn}_Quads.csv


# Clock ELINK 5 6,8,10
echo 5 6,8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 0 1 1 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_56810_${sn}_Quads.csv


# Clock ELINK 5 6,8,11
echo 5 6,8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 1 1 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_56811_${sn}_Quads.csv


# Clock ELINK 5 6,9,10
echo 5 6,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_56910_${sn}_Quads.csv


# Clock ELINK 5 6,9,11
echo 5 6,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_56911_${sn}_Quads.csv


# Clock ELINK 5 6,10,11
echo 5 6,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 0 1 0 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_561011_${sn}_Quads.csv


# Clock ELINK 5 7,8,9
echo 5 7,8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_5789_${sn}_Quads.csv


# Clock ELINK 5 7,8,10
echo 5 7,8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 1 
./wagon_set_crosspoint.py --module 2 --outputs 0 1 1 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_57810_${sn}_Quads.csv


# Clock ELINK 5 7,8,11
echo 5 7,8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 1 1 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_57811_${sn}_Quads.csv


# Clock ELINK 5 7,9,10
echo 5 7,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_57910_${sn}_Quads.csv


# Clock ELINK 5 7,9,11
echo 5 7,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_57911_${sn}_Quads.csv


# Clock ELINK 5 7,10,11
echo 5 7,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 1 
./wagon_set_crosspoint.py --module 2 --outputs 0 1 0 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_571011_${sn}_Quads.csv


# Clock ELINK 5 8,9,10
echo 5 8,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 0 1 1 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_58910_${sn}_Quads.csv


# Clock ELINK 5 8,9,11
echo 5 8,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 1 1 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_58911_${sn}_Quads.csv


# Clock ELINK 5 8,10,11
echo 5 8,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 0 1 1 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_581011_${sn}_Quads.csv


# Clock ELINK 5 9,10,11
echo 5 9,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 0 1 0 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_591011_${sn}_Quads.csv


# Clock ELINK 6 7,8,9
echo 6 7,8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_6789_${sn}_Quads.csv


# Clock ELINK 6 7,8,10
echo 6 7,8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_67810_${sn}_Quads.csv


# Clock ELINK 6 7,8,11
echo 6 7,8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_67811_${sn}_Quads.csv


# Clock ELINK 6 7,9,10
echo 6 7,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_67910_${sn}_Quads.csv


# Clock ELINK 6 7,9,11
echo 6 7,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_67911_${sn}_Quads.csv


# Clock ELINK 6 7,10,11
echo 6 7,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_671011_${sn}_Quads.csv


# Clock ELINK 6 8,9,10
echo 6 8,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_68910_${sn}_Quads.csv


# Clock ELINK 6 8,9,11
echo 6 8,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_68911_${sn}_Quads.csv


# Clock ELINK 6 8,10,11
echo 6 8,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 1 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_681011_${sn}_Quads.csv


# Clock ELINK 6 9,10,11
echo 6 9,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_691011_${sn}_Quads.csv


# Clock ELINK 7 8,9,10
echo 7 8,9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_78910_${sn}_Quads.csv


# Clock ELINK 7 8,9,11
echo 7 8,9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_78911_${sn}_Quads.csv


# Clock ELINK 7 8,10,11
echo 7 8,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 1 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 1 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_781011_${sn}_Quads.csv


# Clock ELINK 7 9,10,11
echo 7 9,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Quads/Clock_791011_${sn}_Quads.csv


# Clock ELINK 8 9,10,11
echo 8 9,10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 1 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 1 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > ClockScans/Quads/Clock_891011_${sn}_Quads.csv



