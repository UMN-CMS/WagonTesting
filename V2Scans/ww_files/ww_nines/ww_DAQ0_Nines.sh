#!/bin/bash

sn=${1}

./wagoneer.py --tx 0 --mode 7
./wagoneer.py --tx 1 --mode 7
./wagoneer.py --tx 2 --mode 7
./wagoneer.py --tx 3 --mode 7
./wagoneer.py --tx 4 --mode 7

./wagoneer.py --tx 0 --mode 1


# DAQ0 ELINK 0 1,2,3,4,5,6,7,8
echo 0 1,2,3,4,5,6,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_012345678_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,5,6,7,9
echo 0 1,2,3,4,5,6,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 0 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_012345679_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,5,6,7,10
echo 0 1,2,3,4,5,6,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0123456710_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,5,6,7,11
echo 0 1,2,3,4,5,6,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0123456711_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,5,6,8,9
echo 0 1,2,3,4,5,6,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_012345689_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,5,6,8,10
echo 0 1,2,3,4,5,6,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0123456810_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,5,6,8,11
echo 0 1,2,3,4,5,6,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0123456811_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,5,6,9,10
echo 0 1,2,3,4,5,6,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0123456910_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,5,6,9,11
echo 0 1,2,3,4,5,6,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0123456911_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,5,6,10,11
echo 0 1,2,3,4,5,6,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01234561011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,5,7,8,9
echo 0 1,2,3,4,5,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_012345789_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,5,7,8,10
echo 0 1,2,3,4,5,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0123457810_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,5,7,8,11
echo 0 1,2,3,4,5,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0123457811_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,5,7,9,10
echo 0 1,2,3,4,5,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0123457910_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,5,7,9,11
echo 0 1,2,3,4,5,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0123457911_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,5,7,10,11
echo 0 1,2,3,4,5,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01234571011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,5,8,9,10
echo 0 1,2,3,4,5,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0123458910_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,5,8,9,11
echo 0 1,2,3,4,5,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0123458911_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,5,8,10,11
echo 0 1,2,3,4,5,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01234581011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,5,9,10,11
echo 0 1,2,3,4,5,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01234591011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,6,7,8,9
echo 0 1,2,3,4,6,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 0 
./wagon_set_crosspoint.py --module 2 --outputs 2 0 2 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_012346789_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,6,7,8,10
echo 0 1,2,3,4,6,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0123467810_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,6,7,8,11
echo 0 1,2,3,4,6,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0123467811_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,6,7,9,10
echo 0 1,2,3,4,6,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 0 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0123467910_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,6,7,9,11
echo 0 1,2,3,4,6,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 0 
./wagon_set_crosspoint.py --module 2 --outputs 2 0 0 2 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0123467911_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,6,7,10,11
echo 0 1,2,3,4,6,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01234671011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,6,8,9,10
echo 0 1,2,3,4,6,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0123468910_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,6,8,9,11
echo 0 1,2,3,4,6,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0123468911_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,6,8,10,11
echo 0 1,2,3,4,6,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01234681011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,6,9,10,11
echo 0 1,2,3,4,6,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01234691011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,7,8,9,10
echo 0 1,2,3,4,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0123478910_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,7,8,9,11
echo 0 1,2,3,4,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0123478911_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,7,8,10,11
echo 0 1,2,3,4,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01234781011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,7,9,10,11
echo 0 1,2,3,4,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01234791011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,4,8,9,10,11
echo 0 1,2,3,4,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01234891011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,5,6,7,8,9
echo 0 1,2,3,5,6,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_012356789_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,5,6,7,8,10
echo 0 1,2,3,5,6,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0123567810_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,5,6,7,8,11
echo 0 1,2,3,5,6,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0123567811_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,5,6,7,9,10
echo 0 1,2,3,5,6,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0123567910_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,5,6,7,9,11
echo 0 1,2,3,5,6,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0123567911_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,5,6,7,10,11
echo 0 1,2,3,5,6,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01235671011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,5,6,8,9,10
echo 0 1,2,3,5,6,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0123568910_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,5,6,8,9,11
echo 0 1,2,3,5,6,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0123568911_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,5,6,8,10,11
echo 0 1,2,3,5,6,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01235681011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,5,6,9,10,11
echo 0 1,2,3,5,6,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01235691011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,5,7,8,9,10
echo 0 1,2,3,5,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0123578910_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,5,7,8,9,11
echo 0 1,2,3,5,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0123578911_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,5,7,8,10,11
echo 0 1,2,3,5,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01235781011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,5,7,9,10,11
echo 0 1,2,3,5,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01235791011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,5,8,9,10,11
echo 0 1,2,3,5,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01235891011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,6,7,8,9,10
echo 0 1,2,3,6,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0123678910_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,6,7,8,9,11
echo 0 1,2,3,6,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0123678911_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,6,7,8,10,11
echo 0 1,2,3,6,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01236781011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,6,7,9,10,11
echo 0 1,2,3,6,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01236791011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,6,8,9,10,11
echo 0 1,2,3,6,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01236891011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,3,7,8,9,10,11
echo 0 1,2,3,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01237891011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,4,5,6,7,8,9
echo 0 1,2,4,5,6,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_012456789_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,4,5,6,7,8,10
echo 0 1,2,4,5,6,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0124567810_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,4,5,6,7,8,11
echo 0 1,2,4,5,6,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0124567811_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,4,5,6,7,9,10
echo 0 1,2,4,5,6,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0124567910_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,4,5,6,7,9,11
echo 0 1,2,4,5,6,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0124567911_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,4,5,6,7,10,11
echo 0 1,2,4,5,6,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01245671011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,4,5,6,8,9,10
echo 0 1,2,4,5,6,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0124568910_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,4,5,6,8,9,11
echo 0 1,2,4,5,6,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0124568911_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,4,5,6,8,10,11
echo 0 1,2,4,5,6,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01245681011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,4,5,6,9,10,11
echo 0 1,2,4,5,6,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01245691011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,4,5,7,8,9,10
echo 0 1,2,4,5,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0124578910_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,4,5,7,8,9,11
echo 0 1,2,4,5,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0124578911_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,4,5,7,8,10,11
echo 0 1,2,4,5,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01245781011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,4,5,7,9,10,11
echo 0 1,2,4,5,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01245791011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,4,5,8,9,10,11
echo 0 1,2,4,5,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01245891011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,4,6,7,8,9,10
echo 0 1,2,4,6,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0124678910_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,4,6,7,8,9,11
echo 0 1,2,4,6,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0124678911_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,4,6,7,8,10,11
echo 0 1,2,4,6,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01246781011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,4,6,7,9,10,11
echo 0 1,2,4,6,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01246791011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,4,6,8,9,10,11
echo 0 1,2,4,6,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01246891011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,4,7,8,9,10,11
echo 0 1,2,4,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01247891011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,5,6,7,8,9,10
echo 0 1,2,5,6,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0125678910_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,5,6,7,8,9,11
echo 0 1,2,5,6,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0125678911_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,5,6,7,8,10,11
echo 0 1,2,5,6,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01256781011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,5,6,7,9,10,11
echo 0 1,2,5,6,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01256791011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,5,6,8,9,10,11
echo 0 1,2,5,6,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01256891011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,5,7,8,9,10,11
echo 0 1,2,5,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01257891011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,2,6,7,8,9,10,11
echo 0 1,2,6,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01267891011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,3,4,5,6,7,8,9
echo 0 1,3,4,5,6,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_013456789_${sn}_Nines.csv


# DAQ0 ELINK 0 1,3,4,5,6,7,8,10
echo 0 1,3,4,5,6,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0134567810_${sn}_Nines.csv


# DAQ0 ELINK 0 1,3,4,5,6,7,8,11
echo 0 1,3,4,5,6,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0134567811_${sn}_Nines.csv


# DAQ0 ELINK 0 1,3,4,5,6,7,9,10
echo 0 1,3,4,5,6,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0134567910_${sn}_Nines.csv


# DAQ0 ELINK 0 1,3,4,5,6,7,9,11
echo 0 1,3,4,5,6,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0134567911_${sn}_Nines.csv


# DAQ0 ELINK 0 1,3,4,5,6,7,10,11
echo 0 1,3,4,5,6,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01345671011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,3,4,5,6,8,9,10
echo 0 1,3,4,5,6,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0134568910_${sn}_Nines.csv


# DAQ0 ELINK 0 1,3,4,5,6,8,9,11
echo 0 1,3,4,5,6,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0134568911_${sn}_Nines.csv


# DAQ0 ELINK 0 1,3,4,5,6,8,10,11
echo 0 1,3,4,5,6,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01345681011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,3,4,5,6,9,10,11
echo 0 1,3,4,5,6,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01345691011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,3,4,5,7,8,9,10
echo 0 1,3,4,5,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0134578910_${sn}_Nines.csv


# DAQ0 ELINK 0 1,3,4,5,7,8,9,11
echo 0 1,3,4,5,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0134578911_${sn}_Nines.csv


# DAQ0 ELINK 0 1,3,4,5,7,8,10,11
echo 0 1,3,4,5,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01345781011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,3,4,5,7,9,10,11
echo 0 1,3,4,5,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01345791011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,3,4,5,8,9,10,11
echo 0 1,3,4,5,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01345891011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,3,4,6,7,8,9,10
echo 0 1,3,4,6,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0134678910_${sn}_Nines.csv


# DAQ0 ELINK 0 1,3,4,6,7,8,9,11
echo 0 1,3,4,6,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0134678911_${sn}_Nines.csv


# DAQ0 ELINK 0 1,3,4,6,7,8,10,11
echo 0 1,3,4,6,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01346781011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,3,4,6,7,9,10,11
echo 0 1,3,4,6,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01346791011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,3,4,6,8,9,10,11
echo 0 1,3,4,6,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01346891011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,3,4,7,8,9,10,11
echo 0 1,3,4,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01347891011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,3,5,6,7,8,9,10
echo 0 1,3,5,6,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0135678910_${sn}_Nines.csv


# DAQ0 ELINK 0 1,3,5,6,7,8,9,11
echo 0 1,3,5,6,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0135678911_${sn}_Nines.csv


# DAQ0 ELINK 0 1,3,5,6,7,8,10,11
echo 0 1,3,5,6,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01356781011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,3,5,6,7,9,10,11
echo 0 1,3,5,6,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01356791011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,3,5,6,8,9,10,11
echo 0 1,3,5,6,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01356891011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,3,5,7,8,9,10,11
echo 0 1,3,5,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01357891011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,3,6,7,8,9,10,11
echo 0 1,3,6,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01367891011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,4,5,6,7,8,9,10
echo 0 1,4,5,6,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0145678910_${sn}_Nines.csv


# DAQ0 ELINK 0 1,4,5,6,7,8,9,11
echo 0 1,4,5,6,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0145678911_${sn}_Nines.csv


# DAQ0 ELINK 0 1,4,5,6,7,8,10,11
echo 0 1,4,5,6,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01456781011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,4,5,6,7,9,10,11
echo 0 1,4,5,6,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01456791011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,4,5,6,8,9,10,11
echo 0 1,4,5,6,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01456891011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,4,5,7,8,9,10,11
echo 0 1,4,5,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01457891011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,4,6,7,8,9,10,11
echo 0 1,4,6,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01467891011_${sn}_Nines.csv


# DAQ0 ELINK 0 1,5,6,7,8,9,10,11
echo 0 1,5,6,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_01567891011_${sn}_Nines.csv


# DAQ0 ELINK 0 2,3,4,5,6,7,8,9
echo 0 2,3,4,5,6,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_023456789_${sn}_Nines.csv


# DAQ0 ELINK 0 2,3,4,5,6,7,8,10
echo 0 2,3,4,5,6,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0234567810_${sn}_Nines.csv


# DAQ0 ELINK 0 2,3,4,5,6,7,8,11
echo 0 2,3,4,5,6,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0234567811_${sn}_Nines.csv


# DAQ0 ELINK 0 2,3,4,5,6,7,9,10
echo 0 2,3,4,5,6,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0234567910_${sn}_Nines.csv


# DAQ0 ELINK 0 2,3,4,5,6,7,9,11
echo 0 2,3,4,5,6,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0234567911_${sn}_Nines.csv


# DAQ0 ELINK 0 2,3,4,5,6,7,10,11
echo 0 2,3,4,5,6,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_02345671011_${sn}_Nines.csv


# DAQ0 ELINK 0 2,3,4,5,6,8,9,10
echo 0 2,3,4,5,6,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0234568910_${sn}_Nines.csv


# DAQ0 ELINK 0 2,3,4,5,6,8,9,11
echo 0 2,3,4,5,6,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0234568911_${sn}_Nines.csv


# DAQ0 ELINK 0 2,3,4,5,6,8,10,11
echo 0 2,3,4,5,6,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_02345681011_${sn}_Nines.csv


# DAQ0 ELINK 0 2,3,4,5,6,9,10,11
echo 0 2,3,4,5,6,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_02345691011_${sn}_Nines.csv


# DAQ0 ELINK 0 2,3,4,5,7,8,9,10
echo 0 2,3,4,5,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0234578910_${sn}_Nines.csv


# DAQ0 ELINK 0 2,3,4,5,7,8,9,11
echo 0 2,3,4,5,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0234578911_${sn}_Nines.csv


# DAQ0 ELINK 0 2,3,4,5,7,8,10,11
echo 0 2,3,4,5,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_02345781011_${sn}_Nines.csv


# DAQ0 ELINK 0 2,3,4,5,7,9,10,11
echo 0 2,3,4,5,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_02345791011_${sn}_Nines.csv


# DAQ0 ELINK 0 2,3,4,5,8,9,10,11
echo 0 2,3,4,5,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_02345891011_${sn}_Nines.csv


# DAQ0 ELINK 0 2,3,4,6,7,8,9,10
echo 0 2,3,4,6,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0234678910_${sn}_Nines.csv


# DAQ0 ELINK 0 2,3,4,6,7,8,9,11
echo 0 2,3,4,6,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0234678911_${sn}_Nines.csv


# DAQ0 ELINK 0 2,3,4,6,7,8,10,11
echo 0 2,3,4,6,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_02346781011_${sn}_Nines.csv


# DAQ0 ELINK 0 2,3,4,6,7,9,10,11
echo 0 2,3,4,6,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_02346791011_${sn}_Nines.csv


# DAQ0 ELINK 0 2,3,4,6,8,9,10,11
echo 0 2,3,4,6,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_02346891011_${sn}_Nines.csv


# DAQ0 ELINK 0 2,3,4,7,8,9,10,11
echo 0 2,3,4,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_02347891011_${sn}_Nines.csv


# DAQ0 ELINK 0 2,3,5,6,7,8,9,10
echo 0 2,3,5,6,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0235678910_${sn}_Nines.csv


# DAQ0 ELINK 0 2,3,5,6,7,8,9,11
echo 0 2,3,5,6,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0235678911_${sn}_Nines.csv


# DAQ0 ELINK 0 2,3,5,6,7,8,10,11
echo 0 2,3,5,6,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_02356781011_${sn}_Nines.csv


# DAQ0 ELINK 0 2,3,5,6,7,9,10,11
echo 0 2,3,5,6,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_02356791011_${sn}_Nines.csv


# DAQ0 ELINK 0 2,3,5,6,8,9,10,11
echo 0 2,3,5,6,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_02356891011_${sn}_Nines.csv


# DAQ0 ELINK 0 2,3,5,7,8,9,10,11
echo 0 2,3,5,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_02357891011_${sn}_Nines.csv


# DAQ0 ELINK 0 2,3,6,7,8,9,10,11
echo 0 2,3,6,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_02367891011_${sn}_Nines.csv


# DAQ0 ELINK 0 2,4,5,6,7,8,9,10
echo 0 2,4,5,6,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0245678910_${sn}_Nines.csv


# DAQ0 ELINK 0 2,4,5,6,7,8,9,11
echo 0 2,4,5,6,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0245678911_${sn}_Nines.csv


# DAQ0 ELINK 0 2,4,5,6,7,8,10,11
echo 0 2,4,5,6,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_02456781011_${sn}_Nines.csv


# DAQ0 ELINK 0 2,4,5,6,7,9,10,11
echo 0 2,4,5,6,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_02456791011_${sn}_Nines.csv


# DAQ0 ELINK 0 2,4,5,6,8,9,10,11
echo 0 2,4,5,6,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_02456891011_${sn}_Nines.csv


# DAQ0 ELINK 0 2,4,5,7,8,9,10,11
echo 0 2,4,5,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_02457891011_${sn}_Nines.csv


# DAQ0 ELINK 0 2,4,6,7,8,9,10,11
echo 0 2,4,6,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_02467891011_${sn}_Nines.csv


# DAQ0 ELINK 0 2,5,6,7,8,9,10,11
echo 0 2,5,6,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_02567891011_${sn}_Nines.csv


# DAQ0 ELINK 0 3,4,5,6,7,8,9,10
echo 0 3,4,5,6,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0345678910_${sn}_Nines.csv


# DAQ0 ELINK 0 3,4,5,6,7,8,9,11
echo 0 3,4,5,6,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_0345678911_${sn}_Nines.csv


# DAQ0 ELINK 0 3,4,5,6,7,8,10,11
echo 0 3,4,5,6,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_03456781011_${sn}_Nines.csv


# DAQ0 ELINK 0 3,4,5,6,7,9,10,11
echo 0 3,4,5,6,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_03456791011_${sn}_Nines.csv


# DAQ0 ELINK 0 3,4,5,6,8,9,10,11
echo 0 3,4,5,6,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_03456891011_${sn}_Nines.csv


# DAQ0 ELINK 0 3,4,5,7,8,9,10,11
echo 0 3,4,5,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_03457891011_${sn}_Nines.csv


# DAQ0 ELINK 0 3,4,6,7,8,9,10,11
echo 0 3,4,6,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_03467891011_${sn}_Nines.csv


# DAQ0 ELINK 0 3,5,6,7,8,9,10,11
echo 0 3,5,6,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_03567891011_${sn}_Nines.csv


# DAQ0 ELINK 0 4,5,6,7,8,9,10,11
echo 0 4,5,6,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_04567891011_${sn}_Nines.csv


# DAQ0 ELINK 1 2,3,4,5,6,7,8,9
echo 1 2,3,4,5,6,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_123456789_${sn}_Nines.csv


# DAQ0 ELINK 1 2,3,4,5,6,7,8,10
echo 1 2,3,4,5,6,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_1234567810_${sn}_Nines.csv


# DAQ0 ELINK 1 2,3,4,5,6,7,8,11
echo 1 2,3,4,5,6,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_1234567811_${sn}_Nines.csv


# DAQ0 ELINK 1 2,3,4,5,6,7,9,10
echo 1 2,3,4,5,6,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_1234567910_${sn}_Nines.csv


# DAQ0 ELINK 1 2,3,4,5,6,7,9,11
echo 1 2,3,4,5,6,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_1234567911_${sn}_Nines.csv


# DAQ0 ELINK 1 2,3,4,5,6,7,10,11
echo 1 2,3,4,5,6,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_12345671011_${sn}_Nines.csv


# DAQ0 ELINK 1 2,3,4,5,6,8,9,10
echo 1 2,3,4,5,6,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_1234568910_${sn}_Nines.csv


# DAQ0 ELINK 1 2,3,4,5,6,8,9,11
echo 1 2,3,4,5,6,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_1234568911_${sn}_Nines.csv


# DAQ0 ELINK 1 2,3,4,5,6,8,10,11
echo 1 2,3,4,5,6,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_12345681011_${sn}_Nines.csv


# DAQ0 ELINK 1 2,3,4,5,6,9,10,11
echo 1 2,3,4,5,6,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_12345691011_${sn}_Nines.csv


# DAQ0 ELINK 1 2,3,4,5,7,8,9,10
echo 1 2,3,4,5,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_1234578910_${sn}_Nines.csv


# DAQ0 ELINK 1 2,3,4,5,7,8,9,11
echo 1 2,3,4,5,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_1234578911_${sn}_Nines.csv


# DAQ0 ELINK 1 2,3,4,5,7,8,10,11
echo 1 2,3,4,5,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_12345781011_${sn}_Nines.csv


# DAQ0 ELINK 1 2,3,4,5,7,9,10,11
echo 1 2,3,4,5,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_12345791011_${sn}_Nines.csv


# DAQ0 ELINK 1 2,3,4,5,8,9,10,11
echo 1 2,3,4,5,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_12345891011_${sn}_Nines.csv


# DAQ0 ELINK 1 2,3,4,6,7,8,9,10
echo 1 2,3,4,6,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_1234678910_${sn}_Nines.csv


# DAQ0 ELINK 1 2,3,4,6,7,8,9,11
echo 1 2,3,4,6,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_1234678911_${sn}_Nines.csv


# DAQ0 ELINK 1 2,3,4,6,7,8,10,11
echo 1 2,3,4,6,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_12346781011_${sn}_Nines.csv


# DAQ0 ELINK 1 2,3,4,6,7,9,10,11
echo 1 2,3,4,6,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_12346791011_${sn}_Nines.csv


# DAQ0 ELINK 1 2,3,4,6,8,9,10,11
echo 1 2,3,4,6,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_12346891011_${sn}_Nines.csv


# DAQ0 ELINK 1 2,3,4,7,8,9,10,11
echo 1 2,3,4,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_12347891011_${sn}_Nines.csv


# DAQ0 ELINK 1 2,3,5,6,7,8,9,10
echo 1 2,3,5,6,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_1235678910_${sn}_Nines.csv


# DAQ0 ELINK 1 2,3,5,6,7,8,9,11
echo 1 2,3,5,6,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_1235678911_${sn}_Nines.csv


# DAQ0 ELINK 1 2,3,5,6,7,8,10,11
echo 1 2,3,5,6,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_12356781011_${sn}_Nines.csv


# DAQ0 ELINK 1 2,3,5,6,7,9,10,11
echo 1 2,3,5,6,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_12356791011_${sn}_Nines.csv


# DAQ0 ELINK 1 2,3,5,6,8,9,10,11
echo 1 2,3,5,6,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_12356891011_${sn}_Nines.csv


# DAQ0 ELINK 1 2,3,5,7,8,9,10,11
echo 1 2,3,5,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_12357891011_${sn}_Nines.csv


# DAQ0 ELINK 1 2,3,6,7,8,9,10,11
echo 1 2,3,6,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_12367891011_${sn}_Nines.csv


# DAQ0 ELINK 1 2,4,5,6,7,8,9,10
echo 1 2,4,5,6,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_1245678910_${sn}_Nines.csv


# DAQ0 ELINK 1 2,4,5,6,7,8,9,11
echo 1 2,4,5,6,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_1245678911_${sn}_Nines.csv


# DAQ0 ELINK 1 2,4,5,6,7,8,10,11
echo 1 2,4,5,6,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_12456781011_${sn}_Nines.csv


# DAQ0 ELINK 1 2,4,5,6,7,9,10,11
echo 1 2,4,5,6,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_12456791011_${sn}_Nines.csv


# DAQ0 ELINK 1 2,4,5,6,8,9,10,11
echo 1 2,4,5,6,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_12456891011_${sn}_Nines.csv


# DAQ0 ELINK 1 2,4,5,7,8,9,10,11
echo 1 2,4,5,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_12457891011_${sn}_Nines.csv


# DAQ0 ELINK 1 2,4,6,7,8,9,10,11
echo 1 2,4,6,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_12467891011_${sn}_Nines.csv


# DAQ0 ELINK 1 2,5,6,7,8,9,10,11
echo 1 2,5,6,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_12567891011_${sn}_Nines.csv


# DAQ0 ELINK 1 3,4,5,6,7,8,9,10
echo 1 3,4,5,6,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_1345678910_${sn}_Nines.csv


# DAQ0 ELINK 1 3,4,5,6,7,8,9,11
echo 1 3,4,5,6,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_1345678911_${sn}_Nines.csv


# DAQ0 ELINK 1 3,4,5,6,7,8,10,11
echo 1 3,4,5,6,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_13456781011_${sn}_Nines.csv


# DAQ0 ELINK 1 3,4,5,6,7,9,10,11
echo 1 3,4,5,6,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_13456791011_${sn}_Nines.csv


# DAQ0 ELINK 1 3,4,5,6,8,9,10,11
echo 1 3,4,5,6,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_13456891011_${sn}_Nines.csv


# DAQ0 ELINK 1 3,4,5,7,8,9,10,11
echo 1 3,4,5,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_13457891011_${sn}_Nines.csv


# DAQ0 ELINK 1 3,4,6,7,8,9,10,11
echo 1 3,4,6,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_13467891011_${sn}_Nines.csv


# DAQ0 ELINK 1 3,5,6,7,8,9,10,11
echo 1 3,5,6,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_13567891011_${sn}_Nines.csv


# DAQ0 ELINK 1 4,5,6,7,8,9,10,11
echo 1 4,5,6,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_14567891011_${sn}_Nines.csv


# DAQ0 ELINK 2 3,4,5,6,7,8,9,10
echo 2 3,4,5,6,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_2345678910_${sn}_Nines.csv


# DAQ0 ELINK 2 3,4,5,6,7,8,9,11
echo 2 3,4,5,6,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_2345678911_${sn}_Nines.csv


# DAQ0 ELINK 2 3,4,5,6,7,8,10,11
echo 2 3,4,5,6,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_23456781011_${sn}_Nines.csv


# DAQ0 ELINK 2 3,4,5,6,7,9,10,11
echo 2 3,4,5,6,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_23456791011_${sn}_Nines.csv


# DAQ0 ELINK 2 3,4,5,6,8,9,10,11
echo 2 3,4,5,6,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_23456891011_${sn}_Nines.csv


# DAQ0 ELINK 2 3,4,5,7,8,9,10,11
echo 2 3,4,5,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_23457891011_${sn}_Nines.csv


# DAQ0 ELINK 2 3,4,6,7,8,9,10,11
echo 2 3,4,6,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_23467891011_${sn}_Nines.csv


# DAQ0 ELINK 2 3,5,6,7,8,9,10,11
echo 2 3,5,6,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_23567891011_${sn}_Nines.csv


# DAQ0 ELINK 2 4,5,6,7,8,9,10,11
echo 2 4,5,6,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_24567891011_${sn}_Nines.csv


# DAQ0 ELINK 3 4,5,6,7,8,9,10,11
echo 3 4,5,6,7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Nines/DAQ0_34567891011_${sn}_Nines.csv




