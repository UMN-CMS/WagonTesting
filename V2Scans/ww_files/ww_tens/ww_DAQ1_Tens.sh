#!/bin/bash

sn=${1}

./wagoneer.py --tx 0 --mode 7
./wagoneer.py --tx 1 --mode 7
./wagoneer.py --tx 2 --mode 7
./wagoneer.py --tx 3 --mode 7
./wagoneer.py --tx 4 --mode 7

./wagoneer.py --tx 1 --mode 1


# DAQ1 ELINK 0 1,2,3,4,5,6,7,8,9
echo 0 1,2,3,4,5,6,7,8,9 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 0 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_0123456789_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,3,4,5,6,7,8,10
echo 0 1,2,3,4,5,6,7,8,10 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_01234567810_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,3,4,5,6,7,8,11
echo 0 1,2,3,4,5,6,7,8,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 0 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_01234567811_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,3,4,5,6,7,9,10
echo 0 1,2,3,4,5,6,7,9,10 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_01234567910_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,3,4,5,6,7,9,11
echo 0 1,2,3,4,5,6,7,9,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 0 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 0 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_01234567911_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,3,4,5,6,7,10,11
echo 0 1,2,3,4,5,6,7,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 0 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_012345671011_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,3,4,5,6,8,9,10
echo 0 1,2,3,4,5,6,8,9,10 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_01234568910_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,3,4,5,6,8,9,11
echo 0 1,2,3,4,5,6,8,9,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_01234568911_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,3,4,5,6,8,10,11
echo 0 1,2,3,4,5,6,8,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_012345681011_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,3,4,5,6,9,10,11
echo 0 1,2,3,4,5,6,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 0 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_012345691011_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,3,4,5,7,8,9,10
echo 0 1,2,3,4,5,7,8,9,10 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_01234578910_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,3,4,5,7,8,9,11
echo 0 1,2,3,4,5,7,8,9,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 0 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_01234578911_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,3,4,5,7,8,10,11
echo 0 1,2,3,4,5,7,8,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_012345781011_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,3,4,5,7,9,10,11
echo 0 1,2,3,4,5,7,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 0 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_012345791011_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,3,4,5,8,9,10,11
echo 0 1,2,3,4,5,8,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_012345891011_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,3,4,6,7,8,9,10
echo 0 1,2,3,4,6,7,8,9,10 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 0 2 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_01234678910_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,3,4,6,7,8,9,11
echo 0 1,2,3,4,6,7,8,9,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 0 
./wagon_set_crosspoint.py --module 2 --outputs 2 0 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_01234678911_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,3,4,6,7,8,10,11
echo 0 1,2,3,4,6,7,8,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 0 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_012346781011_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,3,4,6,7,9,10,11
echo 0 1,2,3,4,6,7,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 0 0 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_012346791011_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,3,4,6,8,9,10,11
echo 0 1,2,3,4,6,8,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 0 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_012346891011_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,3,4,7,8,9,10,11
echo 0 1,2,3,4,7,8,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 0 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_012347891011_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,3,5,6,7,8,9,10
echo 0 1,2,3,5,6,7,8,9,10 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_01235678910_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,3,5,6,7,8,9,11
echo 0 1,2,3,5,6,7,8,9,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_01235678911_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,3,5,6,7,8,10,11
echo 0 1,2,3,5,6,7,8,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_012356781011_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,3,5,6,7,9,10,11
echo 0 1,2,3,5,6,7,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 0 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_012356791011_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,3,5,6,8,9,10,11
echo 0 1,2,3,5,6,8,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_012356891011_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,3,5,7,8,9,10,11
echo 0 1,2,3,5,7,8,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_012357891011_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,3,6,7,8,9,10,11
echo 0 1,2,3,6,7,8,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 0 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_012367891011_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,4,5,6,7,8,9,10
echo 0 1,2,4,5,6,7,8,9,10 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_01245678910_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,4,5,6,7,8,9,11
echo 0 1,2,4,5,6,7,8,9,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 0 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_01245678911_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,4,5,6,7,8,10,11
echo 0 1,2,4,5,6,7,8,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_012456781011_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,4,5,6,7,9,10,11
echo 0 1,2,4,5,6,7,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 0 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_012456791011_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,4,5,6,8,9,10,11
echo 0 1,2,4,5,6,8,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_012456891011_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,4,5,7,8,9,10,11
echo 0 1,2,4,5,7,8,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_012457891011_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,4,6,7,8,9,10,11
echo 0 1,2,4,6,7,8,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 0 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_012467891011_${sn}_Tens.csv


# DAQ1 ELINK 0 1,2,5,6,7,8,9,10,11
echo 0 1,2,5,6,7,8,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_012567891011_${sn}_Tens.csv


# DAQ1 ELINK 0 1,3,4,5,6,7,8,9,10
echo 0 1,3,4,5,6,7,8,9,10 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_01345678910_${sn}_Tens.csv


# DAQ1 ELINK 0 1,3,4,5,6,7,8,9,11
echo 0 1,3,4,5,6,7,8,9,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_01345678911_${sn}_Tens.csv


# DAQ1 ELINK 0 1,3,4,5,6,7,8,10,11
echo 0 1,3,4,5,6,7,8,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 0 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_013456781011_${sn}_Tens.csv


# DAQ1 ELINK 0 1,3,4,5,6,7,9,10,11
echo 0 1,3,4,5,6,7,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_013456791011_${sn}_Tens.csv


# DAQ1 ELINK 0 1,3,4,5,6,8,9,10,11
echo 0 1,3,4,5,6,8,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 2 
./wagon_set_crosspoint.py --module 2 --outputs 0 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_013456891011_${sn}_Tens.csv


# DAQ1 ELINK 0 1,3,4,5,7,8,9,10,11
echo 0 1,3,4,5,7,8,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 0 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_013457891011_${sn}_Tens.csv


# DAQ1 ELINK 0 1,3,4,6,7,8,9,10,11
echo 0 1,3,4,6,7,8,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_013467891011_${sn}_Tens.csv


# DAQ1 ELINK 0 1,3,5,6,7,8,9,10,11
echo 0 1,3,5,6,7,8,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 0 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_013567891011_${sn}_Tens.csv


# DAQ1 ELINK 0 1,4,5,6,7,8,9,10,11
echo 0 1,4,5,6,7,8,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 0 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_014567891011_${sn}_Tens.csv


# DAQ1 ELINK 0 2,3,4,5,6,7,8,9,10
echo 0 2,3,4,5,6,7,8,9,10 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_02345678910_${sn}_Tens.csv


# DAQ1 ELINK 0 2,3,4,5,6,7,8,9,11
echo 0 2,3,4,5,6,7,8,9,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 0 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_02345678911_${sn}_Tens.csv


# DAQ1 ELINK 0 2,3,4,5,6,7,8,10,11
echo 0 2,3,4,5,6,7,8,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_023456781011_${sn}_Tens.csv


# DAQ1 ELINK 0 2,3,4,5,6,7,9,10,11
echo 0 2,3,4,5,6,7,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 0 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_023456791011_${sn}_Tens.csv


# DAQ1 ELINK 0 2,3,4,5,6,8,9,10,11
echo 0 2,3,4,5,6,8,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_023456891011_${sn}_Tens.csv


# DAQ1 ELINK 0 2,3,4,5,7,8,9,10,11
echo 0 2,3,4,5,7,8,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_023457891011_${sn}_Tens.csv


# DAQ1 ELINK 0 2,3,4,6,7,8,9,10,11
echo 0 2,3,4,6,7,8,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 0 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_023467891011_${sn}_Tens.csv


# DAQ1 ELINK 0 2,3,5,6,7,8,9,10,11
echo 0 2,3,5,6,7,8,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_023567891011_${sn}_Tens.csv


# DAQ1 ELINK 0 2,4,5,6,7,8,9,10,11
echo 0 2,4,5,6,7,8,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_024567891011_${sn}_Tens.csv


# DAQ1 ELINK 0 3,4,5,6,7,8,9,10,11
echo 0 3,4,5,6,7,8,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 0 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_034567891011_${sn}_Tens.csv


# DAQ1 ELINK 1 2,3,4,5,6,7,8,9,10
echo 1 2,3,4,5,6,7,8,9,10 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_12345678910_${sn}_Tens.csv


# DAQ1 ELINK 1 2,3,4,5,6,7,8,9,11
echo 1 2,3,4,5,6,7,8,9,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 0 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_12345678911_${sn}_Tens.csv


# DAQ1 ELINK 1 2,3,4,5,6,7,8,10,11
echo 1 2,3,4,5,6,7,8,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_123456781011_${sn}_Tens.csv


# DAQ1 ELINK 1 2,3,4,5,6,7,9,10,11
echo 1 2,3,4,5,6,7,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 0 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_123456791011_${sn}_Tens.csv


# DAQ1 ELINK 1 2,3,4,5,6,8,9,10,11
echo 1 2,3,4,5,6,8,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_123456891011_${sn}_Tens.csv


# DAQ1 ELINK 1 2,3,4,5,7,8,9,10,11
echo 1 2,3,4,5,7,8,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_123457891011_${sn}_Tens.csv


# DAQ1 ELINK 1 2,3,4,6,7,8,9,10,11
echo 1 2,3,4,6,7,8,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 0 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_123467891011_${sn}_Tens.csv


# DAQ1 ELINK 1 2,3,5,6,7,8,9,10,11
echo 1 2,3,5,6,7,8,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_123567891011_${sn}_Tens.csv


# DAQ1 ELINK 1 2,4,5,6,7,8,9,10,11
echo 1 2,4,5,6,7,8,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_124567891011_${sn}_Tens.csv


# DAQ1 ELINK 1 3,4,5,6,7,8,9,10,11
echo 1 3,4,5,6,7,8,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 0 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_134567891011_${sn}_Tens.csv


# DAQ1 ELINK 2 3,4,5,6,7,8,9,10,11
echo 2 3,4,5,6,7,8,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/1/Tens/DAQ1_234567891011_${sn}_Tens.csv



