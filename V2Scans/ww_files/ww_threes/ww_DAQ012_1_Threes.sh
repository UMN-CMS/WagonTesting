#!/bin/bash

sn=${1}

./wagoneer.py --tx 0 --mode 7
./wagoneer.py --tx 1 --mode 7
./wagoneer.py --tx 2 --mode 7
./wagoneer.py --tx 3 --mode 7
./wagoneer.py --tx 4 --mode 7

./wagoneer.py --tx 0 --mode 1
./wagoneer.py --tx 1 --mode 1
./wagoneer.py --tx 2 --mode 1

# DAQ0,1,2 ELINK 3 4,5
echo 3 4,5 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_345_${sn}_Threes.csv


# DAQ0,1,2 ELINK 3 4,6
echo 3 4,6 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_346_${sn}_Threes.csv


# DAQ0,1,2 ELINK 3 4,7
echo 3 4,7 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_347_${sn}_Threes.csv


# DAQ0,1,2 ELINK 3 4,8
echo 3 4,8 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_348_${sn}_Threes.csv


# DAQ0,1,2 ELINK 3 4,9
echo 3 4,9 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_349_${sn}_Threes.csv


# DAQ0,1,2 ELINK 3 4,10
echo 3 4,10 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_3410_${sn}_Threes.csv


# DAQ0,1,2 ELINK 3 4,11
echo 3 4,11 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_3411_${sn}_Threes.csv


# DAQ0,1,2 ELINK 3 5,6
echo 3 5,6 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_356_${sn}_Threes.csv


# DAQ0,1,2 ELINK 3 5,7
echo 3 5,7 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_357_${sn}_Threes.csv


# DAQ0,1,2 ELINK 3 5,8
echo 3 5,8 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 2 2 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_358_${sn}_Threes.csv


# DAQ0,1,2 ELINK 3 5,9
echo 3 5,9 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_359_${sn}_Threes.csv


# DAQ0,1,2 ELINK 3 5,10
echo 3 5,10 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 2 --outputs 0 2 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_3510_${sn}_Threes.csv


# DAQ0,1,2 ELINK 3 5,11
echo 3 5,11 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 2 0 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_3511_${sn}_Threes.csv


# DAQ0,1,2 ELINK 3 6,7
echo 3 6,7 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_367_${sn}_Threes.csv


# DAQ0,1,2 ELINK 3 6,8
echo 3 6,8 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_368_${sn}_Threes.csv


# DAQ0,1,2 ELINK 3 6,9
echo 3 6,9 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_369_${sn}_Threes.csv


# DAQ0,1,2 ELINK 3 6,10
echo 3 6,10 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_3610_${sn}_Threes.csv


# DAQ0,1,2 ELINK 3 6,11
echo 3 6,11 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_3611_${sn}_Threes.csv


# DAQ0,1,2 ELINK 3 7,8
echo 3 7,8 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_378_${sn}_Threes.csv


# DAQ0,1,2 ELINK 3 7,9
echo 3 7,9 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_379_${sn}_Threes.csv


# DAQ0,1,2 ELINK 3 7,10
echo 3 7,10 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_3710_${sn}_Threes.csv


# DAQ0,1,2 ELINK 3 7,11
echo 3 7,11 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_3711_${sn}_Threes.csv


# DAQ0,1,2 ELINK 3 8,9
echo 3 8,9 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_389_${sn}_Threes.csv


# DAQ0,1,2 ELINK 3 8,10
echo 3 8,10 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 2 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_3810_${sn}_Threes.csv


# DAQ0,1,2 ELINK 3 8,11
echo 3 8,11 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_3811_${sn}_Threes.csv


# DAQ0,1,2 ELINK 3 9,10
echo 3 9,10 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_3910_${sn}_Threes.csv


# DAQ0,1,2 ELINK 3 9,11
echo 3 9,11 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_3911_${sn}_Threes.csv


# DAQ0,1,2 ELINK 3 10,11
echo 3 10,11 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_31011_${sn}_Threes.csv


# DAQ0,1,2 ELINK 4 5,6
echo 4 5,6 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_456_${sn}_Threes.csv


# DAQ0,1,2 ELINK 4 5,7
echo 4 5,7 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_457_${sn}_Threes.csv


# DAQ0,1,2 ELINK 4 5,8
echo 4 5,8 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 2 2 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_458_${sn}_Threes.csv


# DAQ0,1,2 ELINK 4 5,9
echo 4 5,9 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_459_${sn}_Threes.csv


# DAQ0,1,2 ELINK 4 5,10
echo 4 5,10 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 2 
./wagon_set_crosspoint.py --module 2 --outputs 0 2 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_4510_${sn}_Threes.csv


# DAQ0,1,2 ELINK 4 5,11
echo 4 5,11 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 2 0 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_4511_${sn}_Threes.csv


# DAQ0,1,2 ELINK 4 6,7
echo 4 6,7 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_467_${sn}_Threes.csv


# DAQ0,1,2 ELINK 4 6,8
echo 4 6,8 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_468_${sn}_Threes.csv


# DAQ0,1,2 ELINK 4 6,9
echo 4 6,9 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_469_${sn}_Threes.csv


# DAQ0,1,2 ELINK 4 6,10
echo 4 6,10 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_4610_${sn}_Threes.csv


# DAQ0,1,2 ELINK 4 6,11
echo 4 6,11 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_4611_${sn}_Threes.csv


# DAQ0,1,2 ELINK 4 7,8
echo 4 7,8 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_478_${sn}_Threes.csv


# DAQ0,1,2 ELINK 4 7,9
echo 4 7,9 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_479_${sn}_Threes.csv


# DAQ0,1,2 ELINK 4 7,10
echo 4 7,10 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_4710_${sn}_Threes.csv


# DAQ0,1,2 ELINK 4 7,11
echo 4 7,11 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_4711_${sn}_Threes.csv


# DAQ0,1,2 ELINK 4 8,9
echo 4 8,9 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_489_${sn}_Threes.csv


# DAQ0,1,2 ELINK 4 8,10
echo 4 8,10 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 2 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 2 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_4810_${sn}_Threes.csv


# DAQ0,1,2 ELINK 4 8,11
echo 4 8,11 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_4811_${sn}_Threes.csv


# DAQ0,1,2 ELINK 4 9,10
echo 4 9,10 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_4910_${sn}_Threes.csv


# DAQ0,1,2 ELINK 4 9,11
echo 4 9,11 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_4911_${sn}_Threes.csv


# DAQ0,1,2 ELINK 4 10,11
echo 4 10,11 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 2 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_41011_${sn}_Threes.csv


# DAQ0,1,2 ELINK 5 6,7
echo 5 6,7 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_567_${sn}_Threes.csv


# DAQ0,1,2 ELINK 5 6,8
echo 5 6,8 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 2 2 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_568_${sn}_Threes.csv


# DAQ0,1,2 ELINK 5 6,9
echo 5 6,9 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_569_${sn}_Threes.csv


# DAQ0,1,2 ELINK 5 6,10
echo 5 6,10 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 2 --outputs 0 2 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_5610_${sn}_Threes.csv


# DAQ0,1,2 ELINK 5 6,11
echo 5 6,11 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 2 0 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_5611_${sn}_Threes.csv


# DAQ0,1,2 ELINK 5 7,8
echo 5 7,8 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 2 2 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_578_${sn}_Threes.csv


# DAQ0,1,2 ELINK 5 7,9
echo 5 7,9 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_579_${sn}_Threes.csv


# DAQ0,1,2 ELINK 5 7,10
echo 5 7,10 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 0 2 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_5710_${sn}_Threes.csv


# DAQ0,1,2 ELINK 5 7,11
echo 5 7,11 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 2 0 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_5711_${sn}_Threes.csv


# DAQ0,1,2 ELINK 5 8,9
echo 5 8,9 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 2 2 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_589_${sn}_Threes.csv


# DAQ0,1,2 ELINK 5 8,10
echo 5 8,10 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 2 --outputs 0 2 2 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_5810_${sn}_Threes.csv


# DAQ0,1,2 ELINK 5 8,11
echo 5 8,11 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_5811_${sn}_Threes.csv


# DAQ0,1,2 ELINK 5 9,10
echo 5 9,10 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 2 --outputs 0 2 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_5910_${sn}_Threes.csv


# DAQ0,1,2 ELINK 5 9,11
echo 5 9,11 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 2 0 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_5911_${sn}_Threes.csv


# DAQ0,1,2 ELINK 5 10,11
echo 5 10,11 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 2 --outputs 0 2 0 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_51011_${sn}_Threes.csv


# DAQ0,1,2 ELINK 6 7,8
echo 6 7,8 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_678_${sn}_Threes.csv


# DAQ0,1,2 ELINK 6 7,9
echo 6 7,9 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_679_${sn}_Threes.csv


# DAQ0,1,2 ELINK 6 7,10
echo 6 7,10 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_6710_${sn}_Threes.csv


# DAQ0,1,2 ELINK 6 7,11
echo 6 7,11 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_6711_${sn}_Threes.csv


# DAQ0,1,2 ELINK 6 8,9
echo 6 8,9 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_689_${sn}_Threes.csv


# DAQ0,1,2 ELINK 6 8,10
echo 6 8,10 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 2 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_6810_${sn}_Threes.csv


# DAQ0,1,2 ELINK 6 8,11
echo 6 8,11 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_6811_${sn}_Threes.csv


# DAQ0,1,2 ELINK 6 9,10
echo 6 9,10 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_6910_${sn}_Threes.csv


# DAQ0,1,2 ELINK 6 9,11
echo 6 9,11 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_6911_${sn}_Threes.csv


# DAQ0,1,2 ELINK 6 10,11
echo 6 10,11 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_61011_${sn}_Threes.csv


# DAQ0,1,2 ELINK 7 8,9
echo 7 8,9 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_789_${sn}_Threes.csv


# DAQ0,1,2 ELINK 7 8,10
echo 7 8,10 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 2 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_7810_${sn}_Threes.csv


# DAQ0,1,2 ELINK 7 8,11
echo 7 8,11 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_7811_${sn}_Threes.csv


# DAQ0,1,2 ELINK 7 9,10
echo 7 9,10 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_7910_${sn}_Threes.csv


# DAQ0,1,2 ELINK 7 9,11
echo 7 9,11 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_7911_${sn}_Threes.csv


# DAQ0,1,2 ELINK 7 10,11
echo 7 10,11 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_71011_${sn}_Threes.csv



# DAQ0,1,2 ELINK 8 9,10
echo 8 9,10 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 2 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_8910_${sn}_Threes.csv


# DAQ0,1,2 ELINK 8 9,11
echo 8 9,11 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_8911_${sn}_Threes.csv


# DAQ0,1,2 ELINK 8 10,11
echo 8 10,11 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_81011_${sn}_Threes.csv


# DAQ0,1,2 ELINK 9 10,11
echo 9 10,11 DAQ0,1,2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/012/Threes/DAQ012_91011_${sn}_Threes.csv
