#!/bin/bash

sn=${1}

./wagoneer.py --tx 0 --mode 7
./wagoneer.py --tx 1 --mode 7
./wagoneer.py --tx 2 --mode 7
./wagoneer.py --tx 3 --mode 7
./wagoneer.py --tx 4 --mode 7

./wagoneer.py --tx 3 --mode 1

# Clock ELINK 3 4,5
echo 3 4,5 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_345_${sn}_Threes.csv


# Clock ELINK 3 4,6
echo 3 4,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_346_${sn}_Threes.csv


# Clock ELINK 3 4,7
echo 3 4,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_347_${sn}_Threes.csv


# Clock ELINK 3 4,8
echo 3 4,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_348_${sn}_Threes.csv


# Clock ELINK 3 4,9
echo 3 4,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_349_${sn}_Threes.csv


# Clock ELINK 3 4,10
echo 3 4,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_3410_${sn}_Threes.csv


# Clock ELINK 3 4,11
echo 3 4,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_3411_${sn}_Threes.csv


# Clock ELINK 3 5,6
echo 3 5,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_356_${sn}_Threes.csv


# Clock ELINK 3 5,7
echo 3 5,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_357_${sn}_Threes.csv


# Clock ELINK 3 5,8
echo 3 5,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_358_${sn}_Threes.csv


# Clock ELINK 3 5,9
echo 3 5,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_359_${sn}_Threes.csv


# Clock ELINK 3 5,10
echo 3 5,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_3510_${sn}_Threes.csv


# Clock ELINK 3 5,11
echo 3 5,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_3511_${sn}_Threes.csv


# Clock ELINK 3 6,7
echo 3 6,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_367_${sn}_Threes.csv


# Clock ELINK 3 6,8
echo 3 6,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_368_${sn}_Threes.csv


# Clock ELINK 3 6,9
echo 3 6,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_369_${sn}_Threes.csv


# Clock ELINK 3 6,10
echo 3 6,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_3610_${sn}_Threes.csv


# Clock ELINK 3 6,11
echo 3 6,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_3611_${sn}_Threes.csv


# Clock ELINK 3 7,8
echo 3 7,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_378_${sn}_Threes.csv


# Clock ELINK 3 7,9
echo 3 7,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_379_${sn}_Threes.csv


# Clock ELINK 3 7,10
echo 3 7,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_3710_${sn}_Threes.csv


# Clock ELINK 3 7,11
echo 3 7,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_3711_${sn}_Threes.csv


# Clock ELINK 3 8,9
echo 3 8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_389_${sn}_Threes.csv


# Clock ELINK 3 8,10
echo 3 8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_3810_${sn}_Threes.csv


# Clock ELINK 3 8,11
echo 3 8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_3811_${sn}_Threes.csv


# Clock ELINK 3 9,10
echo 3 9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_3910_${sn}_Threes.csv


# Clock ELINK 3 9,11
echo 3 9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_3911_${sn}_Threes.csv


# Clock ELINK 3 10,11
echo 3 10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_31011_${sn}_Threes.csv


# Clock ELINK 4 5,6
echo 4 5,6 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_456_${sn}_Threes.csv


# Clock ELINK 4 5,7
echo 4 5,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_457_${sn}_Threes.csv


# Clock ELINK 4 5,8
echo 4 5,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_458_${sn}_Threes.csv


# Clock ELINK 4 5,9
echo 4 5,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_459_${sn}_Threes.csv


# Clock ELINK 4 5,10
echo 4 5,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_4510_${sn}_Threes.csv


# Clock ELINK 4 5,11
echo 4 5,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_4511_${sn}_Threes.csv


# Clock ELINK 4 6,7
echo 4 6,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_467_${sn}_Threes.csv


# Clock ELINK 4 6,8
echo 4 6,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_468_${sn}_Threes.csv


# Clock ELINK 4 6,9
echo 4 6,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_469_${sn}_Threes.csv


# Clock ELINK 4 6,10
echo 4 6,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_4610_${sn}_Threes.csv


# Clock ELINK 4 6,11
echo 4 6,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_4611_${sn}_Threes.csv


# Clock ELINK 4 7,8
echo 4 7,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_478_${sn}_Threes.csv


# Clock ELINK 4 7,9
echo 4 7,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_479_${sn}_Threes.csv


# Clock ELINK 4 7,10
echo 4 7,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_4710_${sn}_Threes.csv


# Clock ELINK 4 7,11
echo 4 7,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_4711_${sn}_Threes.csv


# Clock ELINK 4 8,9
echo 4 8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_489_${sn}_Threes.csv


# Clock ELINK 4 8,10
echo 4 8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_4810_${sn}_Threes.csv


# Clock ELINK 4 8,11
echo 4 8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_4811_${sn}_Threes.csv


# Clock ELINK 4 9,10
echo 4 9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_4910_${sn}_Threes.csv


# Clock ELINK 4 9,11
echo 4 9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_4911_${sn}_Threes.csv


# Clock ELINK 4 10,11
echo 4 10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_41011_${sn}_Threes.csv


# Clock ELINK 5 6,7
echo 5 6,7 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_567_${sn}_Threes.csv


# Clock ELINK 5 6,8
echo 5 6,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_568_${sn}_Threes.csv


# Clock ELINK 5 6,9
echo 5 6,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_569_${sn}_Threes.csv


# Clock ELINK 5 6,10
echo 5 6,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_5610_${sn}_Threes.csv


# Clock ELINK 5 6,11
echo 5 6,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_5611_${sn}_Threes.csv


# Clock ELINK 5 7,8
echo 5 7,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_578_${sn}_Threes.csv


# Clock ELINK 5 7,9
echo 5 7,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_579_${sn}_Threes.csv


# Clock ELINK 5 7,10
echo 5 7,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_5710_${sn}_Threes.csv


# Clock ELINK 5 7,11
echo 5 7,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_5711_${sn}_Threes.csv


# Clock ELINK 5 8,9
echo 5 8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_589_${sn}_Threes.csv


# Clock ELINK 5 8,10
echo 5 8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_5810_${sn}_Threes.csv


# Clock ELINK 5 8,11
echo 5 8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_5811_${sn}_Threes.csv


# Clock ELINK 5 9,10
echo 5 9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_5910_${sn}_Threes.csv


# Clock ELINK 5 9,11
echo 5 9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_5911_${sn}_Threes.csv


# Clock ELINK 5 10,11
echo 5 10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_51011_${sn}_Threes.csv


# Clock ELINK 6 7,8
echo 6 7,8 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_678_${sn}_Threes.csv


# Clock ELINK 6 7,9
echo 6 7,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_679_${sn}_Threes.csv


# Clock ELINK 6 7,10
echo 6 7,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_6710_${sn}_Threes.csv


# Clock ELINK 6 7,11
echo 6 7,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_6711_${sn}_Threes.csv


# Clock ELINK 6 8,9
echo 6 8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_689_${sn}_Threes.csv


# Clock ELINK 6 8,10
echo 6 8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_6810_${sn}_Threes.csv


# Clock ELINK 6 8,11
echo 6 8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_6811_${sn}_Threes.csv


# Clock ELINK 6 9,10
echo 6 9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_6910_${sn}_Threes.csv


# Clock ELINK 6 9,11
echo 6 9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_6911_${sn}_Threes.csv


# Clock ELINK 6 10,11
echo 6 10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_61011_${sn}_Threes.csv


# Clock ELINK 7 8,9
echo 7 8,9 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_789_${sn}_Threes.csv


# Clock ELINK 7 8,10
echo 7 8,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_7810_${sn}_Threes.csv


# Clock ELINK 7 8,11
echo 7 8,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_7811_${sn}_Threes.csv


# Clock ELINK 7 9,10
echo 7 9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_7910_${sn}_Threes.csv


# Clock ELINK 7 9,11
echo 7 9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_7911_${sn}_Threes.csv


# Clock ELINK 7 10,11
echo 7 10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_71011_${sn}_Threes.csv


# Clock ELINK 8 9,10
echo 8 9,10 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_8910_${sn}_Threes.csv


# Clock ELINK 8 9,11
echo 8 9,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_8911_${sn}_Threes.csv


# Clock ELINK 8 10,11
echo 8 10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_81011_${sn}_Threes.csv


# Clock ELINK 9 10,11
echo 9 10,11 Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > ClockScans/Threes/Clock_91011_${sn}_Threes.csv

