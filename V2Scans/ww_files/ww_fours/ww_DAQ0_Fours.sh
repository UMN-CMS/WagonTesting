#!/bin/bash

sn=${1}

./wagoneer.py --tx 0 --mode 7
./wagoneer.py --tx 1 --mode 7
./wagoneer.py --tx 2 --mode 7
./wagoneer.py --tx 3 --mode 7
./wagoneer.py --tx 4 --mode 7

./wagoneer.py --tx 0 --mode 1

# DAQ0 ELINK 0 1,2,3
echo 0 1,2,3 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0123_${sn}_Quads.csv


# DAQ0 ELINK 0 1,2,4
echo 0 1,2,4 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0124_${sn}_Quads.csv


# DAQ0 ELINK 0 1,2,5
echo 0 1,2,5 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0125_${sn}_Quads.csv


# DAQ0 ELINK 0 1,2,6
echo 0 1,2,6 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0126_${sn}_Quads.csv


# DAQ0 ELINK 0 1,2,7
echo 0 1,2,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0127_${sn}_Quads.csv


# DAQ0 ELINK 0 1,2,8
echo 0 1,2,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0128_${sn}_Quads.csv


# DAQ0 ELINK 0 1,2,9
echo 0 1,2,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0129_${sn}_Quads.csv


# DAQ0 ELINK 0 1,2,10
echo 0 1,2,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_01210_${sn}_Quads.csv


# DAQ0 ELINK 0 1,2,11
echo 0 1,2,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_01211_${sn}_Quads.csv


# DAQ0 ELINK 0 1,3,4
echo 0 1,3,4 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0134_${sn}_Quads.csv


# DAQ0 ELINK 0 1,3,5
echo 0 1,3,5 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0135_${sn}_Quads.csv


# DAQ0 ELINK 0 1,3,6
echo 0 1,3,6 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0136_${sn}_Quads.csv


# DAQ0 ELINK 0 1,3,7
echo 0 1,3,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0137_${sn}_Quads.csv


# DAQ0 ELINK 0 1,3,8
echo 0 1,3,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0138_${sn}_Quads.csv


# DAQ0 ELINK 0 1,3,9
echo 0 1,3,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0139_${sn}_Quads.csv


# DAQ0 ELINK 0 1,3,10
echo 0 1,3,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_01310_${sn}_Quads.csv


# DAQ0 ELINK 0 1,3,11
echo 0 1,3,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_01311_${sn}_Quads.csv


# DAQ0 ELINK 0 1,4,5
echo 0 1,4,5 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0145_${sn}_Quads.csv


# DAQ0 ELINK 0 1,4,6
echo 0 1,4,6 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0146_${sn}_Quads.csv


# DAQ0 ELINK 0 1,4,7
echo 0 1,4,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0147_${sn}_Quads.csv


# DAQ0 ELINK 0 1,4,8
echo 0 1,4,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0148_${sn}_Quads.csv


# DAQ0 ELINK 0 1,4,9
echo 0 1,4,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0149_${sn}_Quads.csv


# DAQ0 ELINK 0 1,4,10
echo 0 1,4,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_01410_${sn}_Quads.csv


# DAQ0 ELINK 0 1,4,11
echo 0 1,4,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_01411_${sn}_Quads.csv


# DAQ0 ELINK 0 1,5,6
echo 0 1,5,6 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0156_${sn}_Quads.csv


# DAQ0 ELINK 0 1,5,7
echo 0 1,5,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0157_${sn}_Quads.csv


# DAQ0 ELINK 0 1,5,8
echo 0 1,5,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0158_${sn}_Quads.csv


# DAQ0 ELINK 0 1,5,9
echo 0 1,5,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0159_${sn}_Quads.csv


# DAQ0 ELINK 0 1,5,10
echo 0 1,5,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_01510_${sn}_Quads.csv


# DAQ0 ELINK 0 1,5,11
echo 0 1,5,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_01511_${sn}_Quads.csv


# DAQ0 ELINK 0 1,6,7
echo 0 1,6,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0167_${sn}_Quads.csv


# DAQ0 ELINK 0 1,6,8
echo 0 1,6,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0168_${sn}_Quads.csv


# DAQ0 ELINK 0 1,6,9
echo 0 1,6,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0169_${sn}_Quads.csv


# DAQ0 ELINK 0 1,6,10
echo 0 1,6,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_01610_${sn}_Quads.csv


# DAQ0 ELINK 0 1,6,11
echo 0 1,6,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_01611_${sn}_Quads.csv


# DAQ0 ELINK 0 1,7,8
echo 0 1,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0178_${sn}_Quads.csv


# DAQ0 ELINK 0 1,7,9
echo 0 1,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0179_${sn}_Quads.csv


# DAQ0 ELINK 0 1,7,10
echo 0 1,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_01710_${sn}_Quads.csv


# DAQ0 ELINK 0 1,7,11
echo 0 1,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_01711_${sn}_Quads.csv


# DAQ0 ELINK 0 1,8,9
echo 0 1,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0189_${sn}_Quads.csv


# DAQ0 ELINK 0 1,8,10
echo 0 1,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_01810_${sn}_Quads.csv


# DAQ0 ELINK 0 1,8,11
echo 0 1,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_01811_${sn}_Quads.csv


# DAQ0 ELINK 0 1,9,10
echo 0 1,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_01910_${sn}_Quads.csv


# DAQ0 ELINK 0 1,9,11
echo 0 1,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_01911_${sn}_Quads.csv


# DAQ0 ELINK 0 1,10,11
echo 0 1,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_011011_${sn}_Quads.csv


# DAQ0 ELINK 0 2,3,4
echo 0 2,3,4 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0234_${sn}_Quads.csv


# DAQ0 ELINK 0 2,3,5
echo 0 2,3,5 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0235_${sn}_Quads.csv


# DAQ0 ELINK 0 2,3,6
echo 0 2,3,6 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0236_${sn}_Quads.csv


# DAQ0 ELINK 0 2,3,7
echo 0 2,3,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0237_${sn}_Quads.csv


# DAQ0 ELINK 0 2,3,8
echo 0 2,3,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0238_${sn}_Quads.csv


# DAQ0 ELINK 0 2,3,9
echo 0 2,3,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0239_${sn}_Quads.csv


# DAQ0 ELINK 0 2,3,10
echo 0 2,3,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_02310_${sn}_Quads.csv


# DAQ0 ELINK 0 2,3,11
echo 0 2,3,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_02311_${sn}_Quads.csv


# DAQ0 ELINK 0 2,4,5
echo 0 2,4,5 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0245_${sn}_Quads.csv


# DAQ0 ELINK 0 2,4,6
echo 0 2,4,6 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0246_${sn}_Quads.csv


# DAQ0 ELINK 0 2,4,7
echo 0 2,4,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0247_${sn}_Quads.csv


# DAQ0 ELINK 0 2,4,8
echo 0 2,4,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0248_${sn}_Quads.csv


# DAQ0 ELINK 0 2,4,9
echo 0 2,4,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0249_${sn}_Quads.csv


# DAQ0 ELINK 0 2,4,10
echo 0 2,4,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_02410_${sn}_Quads.csv


# DAQ0 ELINK 0 2,4,11
echo 0 2,4,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_02411_${sn}_Quads.csv


# DAQ0 ELINK 0 2,5,6
echo 0 2,5,6 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0256_${sn}_Quads.csv


# DAQ0 ELINK 0 2,5,7
echo 0 2,5,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0257_${sn}_Quads.csv


# DAQ0 ELINK 0 2,5,8
echo 0 2,5,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0258_${sn}_Quads.csv


# DAQ0 ELINK 0 2,5,9
echo 0 2,5,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0259_${sn}_Quads.csv


# DAQ0 ELINK 0 2,5,10
echo 0 2,5,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_02510_${sn}_Quads.csv


# DAQ0 ELINK 0 2,5,11
echo 0 2,5,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_02511_${sn}_Quads.csv


# DAQ0 ELINK 0 2,6,7
echo 0 2,6,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0267_${sn}_Quads.csv


# DAQ0 ELINK 0 2,6,8
echo 0 2,6,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0268_${sn}_Quads.csv


# DAQ0 ELINK 0 2,6,9
echo 0 2,6,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0269_${sn}_Quads.csv


# DAQ0 ELINK 0 2,6,10
echo 0 2,6,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_02610_${sn}_Quads.csv


# DAQ0 ELINK 0 2,6,11
echo 0 2,6,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_02611_${sn}_Quads.csv


# DAQ0 ELINK 0 2,7,8
echo 0 2,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0278_${sn}_Quads.csv


# DAQ0 ELINK 0 2,7,9
echo 0 2,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0279_${sn}_Quads.csv


# DAQ0 ELINK 0 2,7,10
echo 0 2,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_02710_${sn}_Quads.csv


# DAQ0 ELINK 0 2,7,11
echo 0 2,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_02711_${sn}_Quads.csv


# DAQ0 ELINK 0 2,8,9
echo 0 2,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0289_${sn}_Quads.csv


# DAQ0 ELINK 0 2,8,10
echo 0 2,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_02810_${sn}_Quads.csv


# DAQ0 ELINK 0 2,8,11
echo 0 2,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_02811_${sn}_Quads.csv


# DAQ0 ELINK 0 2,9,10
echo 0 2,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_02910_${sn}_Quads.csv


# DAQ0 ELINK 0 2,9,11
echo 0 2,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_02911_${sn}_Quads.csv


# DAQ0 ELINK 0 2,10,11
echo 0 2,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_021011_${sn}_Quads.csv


# DAQ0 ELINK 0 3,4,5
echo 0 3,4,5 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0345_${sn}_Quads.csv


# DAQ0 ELINK 0 3,4,6
echo 0 3,4,6 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0346_${sn}_Quads.csv


# DAQ0 ELINK 0 3,4,7
echo 0 3,4,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0347_${sn}_Quads.csv


# DAQ0 ELINK 0 3,4,8
echo 0 3,4,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0348_${sn}_Quads.csv


# DAQ0 ELINK 0 3,4,9
echo 0 3,4,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0349_${sn}_Quads.csv


# DAQ0 ELINK 0 3,4,10
echo 0 3,4,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_03410_${sn}_Quads.csv


# DAQ0 ELINK 0 3,4,11
echo 0 3,4,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_03411_${sn}_Quads.csv


# DAQ0 ELINK 0 3,5,6
echo 0 3,5,6 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0356_${sn}_Quads.csv


# DAQ0 ELINK 0 3,5,7
echo 0 3,5,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0357_${sn}_Quads.csv


# DAQ0 ELINK 0 3,5,8
echo 0 3,5,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0358_${sn}_Quads.csv


# DAQ0 ELINK 0 3,5,9
echo 0 3,5,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0359_${sn}_Quads.csv


# DAQ0 ELINK 0 3,5,10
echo 0 3,5,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_03510_${sn}_Quads.csv


# DAQ0 ELINK 0 3,5,11
echo 0 3,5,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_03511_${sn}_Quads.csv


# DAQ0 ELINK 0 3,6,7
echo 0 3,6,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0367_${sn}_Quads.csv


# DAQ0 ELINK 0 3,6,8
echo 0 3,6,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0368_${sn}_Quads.csv


# DAQ0 ELINK 0 3,6,9
echo 0 3,6,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0369_${sn}_Quads.csv


# DAQ0 ELINK 0 3,6,10
echo 0 3,6,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_03610_${sn}_Quads.csv


# DAQ0 ELINK 0 3,6,11
echo 0 3,6,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_03611_${sn}_Quads.csv


# DAQ0 ELINK 0 3,7,8
echo 0 3,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0378_${sn}_Quads.csv


# DAQ0 ELINK 0 3,7,9
echo 0 3,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0379_${sn}_Quads.csv


# DAQ0 ELINK 0 3,7,10
echo 0 3,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_03710_${sn}_Quads.csv


# DAQ0 ELINK 0 3,7,11
echo 0 3,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_03711_${sn}_Quads.csv


# DAQ0 ELINK 0 3,8,9
echo 0 3,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0389_${sn}_Quads.csv


# DAQ0 ELINK 0 3,8,10
echo 0 3,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_03810_${sn}_Quads.csv


# DAQ0 ELINK 0 3,8,11
echo 0 3,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_03811_${sn}_Quads.csv


# DAQ0 ELINK 0 3,9,10
echo 0 3,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_03910_${sn}_Quads.csv


# DAQ0 ELINK 0 3,9,11
echo 0 3,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_03911_${sn}_Quads.csv


# DAQ0 ELINK 0 3,10,11
echo 0 3,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_031011_${sn}_Quads.csv


# DAQ0 ELINK 0 4,5,6
echo 0 4,5,6 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0456_${sn}_Quads.csv


# DAQ0 ELINK 0 4,5,7
echo 0 4,5,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0457_${sn}_Quads.csv


# DAQ0 ELINK 0 4,5,8
echo 0 4,5,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0458_${sn}_Quads.csv


# DAQ0 ELINK 0 4,5,9
echo 0 4,5,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0459_${sn}_Quads.csv


# DAQ0 ELINK 0 4,5,10
echo 0 4,5,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_04510_${sn}_Quads.csv


# DAQ0 ELINK 0 4,5,11
echo 0 4,5,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_04511_${sn}_Quads.csv


# DAQ0 ELINK 0 4,6,7
echo 0 4,6,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0467_${sn}_Quads.csv


# DAQ0 ELINK 0 4,6,8
echo 0 4,6,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0468_${sn}_Quads.csv


# DAQ0 ELINK 0 4,6,9
echo 0 4,6,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0469_${sn}_Quads.csv


# DAQ0 ELINK 0 4,6,10
echo 0 4,6,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_04610_${sn}_Quads.csv


# DAQ0 ELINK 0 4,6,11
echo 0 4,6,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_04611_${sn}_Quads.csv


# DAQ0 ELINK 0 4,7,8
echo 0 4,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0478_${sn}_Quads.csv


# DAQ0 ELINK 0 4,7,9
echo 0 4,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0479_${sn}_Quads.csv


# DAQ0 ELINK 0 4,7,10
echo 0 4,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_04710_${sn}_Quads.csv


# DAQ0 ELINK 0 4,7,11
echo 0 4,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_04711_${sn}_Quads.csv


# DAQ0 ELINK 0 4,8,9
echo 0 4,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0489_${sn}_Quads.csv


# DAQ0 ELINK 0 4,8,10
echo 0 4,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_04810_${sn}_Quads.csv


# DAQ0 ELINK 0 4,8,11
echo 0 4,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_04811_${sn}_Quads.csv


# DAQ0 ELINK 0 4,9,10
echo 0 4,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_04910_${sn}_Quads.csv


# DAQ0 ELINK 0 4,9,11
echo 0 4,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_04911_${sn}_Quads.csv


# DAQ0 ELINK 0 4,10,11
echo 0 4,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_041011_${sn}_Quads.csv


# DAQ0 ELINK 0 5,6,7
echo 0 5,6,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0567_${sn}_Quads.csv


# DAQ0 ELINK 0 5,6,8
echo 0 5,6,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0568_${sn}_Quads.csv


# DAQ0 ELINK 0 5,6,9
echo 0 5,6,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0569_${sn}_Quads.csv


# DAQ0 ELINK 0 5,6,10
echo 0 5,6,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_05610_${sn}_Quads.csv


# DAQ0 ELINK 0 5,6,11
echo 0 5,6,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_05611_${sn}_Quads.csv


# DAQ0 ELINK 0 5,7,8
echo 0 5,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0578_${sn}_Quads.csv


# DAQ0 ELINK 0 5,7,9
echo 0 5,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0579_${sn}_Quads.csv


# DAQ0 ELINK 0 5,7,10
echo 0 5,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_05710_${sn}_Quads.csv


# DAQ0 ELINK 0 5,7,11
echo 0 5,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_05711_${sn}_Quads.csv


# DAQ0 ELINK 0 5,8,9
echo 0 5,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0589_${sn}_Quads.csv


# DAQ0 ELINK 0 5,8,10
echo 0 5,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_05810_${sn}_Quads.csv


# DAQ0 ELINK 0 5,8,11
echo 0 5,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_05811_${sn}_Quads.csv


# DAQ0 ELINK 0 5,9,10
echo 0 5,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_05910_${sn}_Quads.csv


# DAQ0 ELINK 0 5,9,11
echo 0 5,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_05911_${sn}_Quads.csv


# DAQ0 ELINK 0 5,10,11
echo 0 5,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_051011_${sn}_Quads.csv


# DAQ0 ELINK 0 6,7,8
echo 0 6,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0678_${sn}_Quads.csv


# DAQ0 ELINK 0 6,7,9
echo 0 6,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0679_${sn}_Quads.csv


# DAQ0 ELINK 0 6,7,10
echo 0 6,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_06710_${sn}_Quads.csv


# DAQ0 ELINK 0 6,7,11
echo 0 6,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_06711_${sn}_Quads.csv


# DAQ0 ELINK 0 6,8,9
echo 0 6,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0689_${sn}_Quads.csv


# DAQ0 ELINK 0 6,8,10
echo 0 6,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_06810_${sn}_Quads.csv


# DAQ0 ELINK 0 6,8,11
echo 0 6,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_06811_${sn}_Quads.csv


# DAQ0 ELINK 0 6,9,10
echo 0 6,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_06910_${sn}_Quads.csv


# DAQ0 ELINK 0 6,9,11
echo 0 6,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_06911_${sn}_Quads.csv


# DAQ0 ELINK 0 6,10,11
echo 0 6,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_061011_${sn}_Quads.csv


# DAQ0 ELINK 0 7,8,9
echo 0 7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_0789_${sn}_Quads.csv


# DAQ0 ELINK 0 7,8,10
echo 0 7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_07810_${sn}_Quads.csv


# DAQ0 ELINK 0 7,8,11
echo 0 7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_07811_${sn}_Quads.csv


# DAQ0 ELINK 0 7,9,10
echo 0 7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_07910_${sn}_Quads.csv


# DAQ0 ELINK 0 7,9,11
echo 0 7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_07911_${sn}_Quads.csv


# DAQ0 ELINK 0 7,10,11
echo 0 7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_071011_${sn}_Quads.csv


# DAQ0 ELINK 0 8,9,10
echo 0 8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_08910_${sn}_Quads.csv


# DAQ0 ELINK 0 8,9,11
echo 0 8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_08911_${sn}_Quads.csv


# DAQ0 ELINK 0 8,10,11
echo 0 8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_081011_${sn}_Quads.csv


# DAQ0 ELINK 0 9,10,11
echo 0 9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_091011_${sn}_Quads.csv


# DAQ0 ELINK 1 2,3,4
echo 1 2,3,4 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1234_${sn}_Quads.csv


# DAQ0 ELINK 1 2,3,5
echo 1 2,3,5 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1235_${sn}_Quads.csv


# DAQ0 ELINK 1 2,3,6
echo 1 2,3,6 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1236_${sn}_Quads.csv


# DAQ0 ELINK 1 2,3,7
echo 1 2,3,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1237_${sn}_Quads.csv


# DAQ0 ELINK 1 2,3,8
echo 1 2,3,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1238_${sn}_Quads.csv


# DAQ0 ELINK 1 2,3,9
echo 1 2,3,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1239_${sn}_Quads.csv


# DAQ0 ELINK 1 2,3,10
echo 1 2,3,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_12310_${sn}_Quads.csv


# DAQ0 ELINK 1 2,3,11
echo 1 2,3,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_12311_${sn}_Quads.csv


# DAQ0 ELINK 1 2,4,5
echo 1 2,4,5 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1245_${sn}_Quads.csv


# DAQ0 ELINK 1 2,4,6
echo 1 2,4,6 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1246_${sn}_Quads.csv


# DAQ0 ELINK 1 2,4,7
echo 1 2,4,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1247_${sn}_Quads.csv


# DAQ0 ELINK 1 2,4,8
echo 1 2,4,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1248_${sn}_Quads.csv


# DAQ0 ELINK 1 2,4,9
echo 1 2,4,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1249_${sn}_Quads.csv


# DAQ0 ELINK 1 2,4,10
echo 1 2,4,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_12410_${sn}_Quads.csv


# DAQ0 ELINK 1 2,4,11
echo 1 2,4,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_12411_${sn}_Quads.csv


# DAQ0 ELINK 1 2,5,6
echo 1 2,5,6 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1256_${sn}_Quads.csv


# DAQ0 ELINK 1 2,5,7
echo 1 2,5,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1257_${sn}_Quads.csv


# DAQ0 ELINK 1 2,5,8
echo 1 2,5,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1258_${sn}_Quads.csv


# DAQ0 ELINK 1 2,5,9
echo 1 2,5,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1259_${sn}_Quads.csv


# DAQ0 ELINK 1 2,5,10
echo 1 2,5,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_12510_${sn}_Quads.csv


# DAQ0 ELINK 1 2,5,11
echo 1 2,5,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_12511_${sn}_Quads.csv


# DAQ0 ELINK 1 2,6,7
echo 1 2,6,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1267_${sn}_Quads.csv


# DAQ0 ELINK 1 2,6,8
echo 1 2,6,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1268_${sn}_Quads.csv


# DAQ0 ELINK 1 2,6,9
echo 1 2,6,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1269_${sn}_Quads.csv


# DAQ0 ELINK 1 2,6,10
echo 1 2,6,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_12610_${sn}_Quads.csv


# DAQ0 ELINK 1 2,6,11
echo 1 2,6,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_12611_${sn}_Quads.csv


# DAQ0 ELINK 1 2,7,8
echo 1 2,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1278_${sn}_Quads.csv


# DAQ0 ELINK 1 2,7,9
echo 1 2,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1279_${sn}_Quads.csv


# DAQ0 ELINK 1 2,7,10
echo 1 2,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_12710_${sn}_Quads.csv


# DAQ0 ELINK 1 2,7,11
echo 1 2,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_12711_${sn}_Quads.csv


# DAQ0 ELINK 1 2,8,9
echo 1 2,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1289_${sn}_Quads.csv


# DAQ0 ELINK 1 2,8,10
echo 1 2,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_12810_${sn}_Quads.csv


# DAQ0 ELINK 1 2,8,11
echo 1 2,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_12811_${sn}_Quads.csv


# DAQ0 ELINK 1 2,9,10
echo 1 2,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_12910_${sn}_Quads.csv


# DAQ0 ELINK 1 2,9,11
echo 1 2,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_12911_${sn}_Quads.csv


# DAQ0 ELINK 1 2,10,11
echo 1 2,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_121011_${sn}_Quads.csv


# DAQ0 ELINK 1 3,4,5
echo 1 3,4,5 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1345_${sn}_Quads.csv


# DAQ0 ELINK 1 3,4,6
echo 1 3,4,6 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1346_${sn}_Quads.csv


# DAQ0 ELINK 1 3,4,7
echo 1 3,4,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1347_${sn}_Quads.csv


# DAQ0 ELINK 1 3,4,8
echo 1 3,4,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1348_${sn}_Quads.csv


# DAQ0 ELINK 1 3,4,9
echo 1 3,4,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1349_${sn}_Quads.csv


# DAQ0 ELINK 1 3,4,10
echo 1 3,4,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_13410_${sn}_Quads.csv


# DAQ0 ELINK 1 3,4,11
echo 1 3,4,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_13411_${sn}_Quads.csv


# DAQ0 ELINK 1 3,5,6
echo 1 3,5,6 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1356_${sn}_Quads.csv


# DAQ0 ELINK 1 3,5,7
echo 1 3,5,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1357_${sn}_Quads.csv


# DAQ0 ELINK 1 3,5,8
echo 1 3,5,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1358_${sn}_Quads.csv


# DAQ0 ELINK 1 3,5,9
echo 1 3,5,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1359_${sn}_Quads.csv


# DAQ0 ELINK 1 3,5,10
echo 1 3,5,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_13510_${sn}_Quads.csv


# DAQ0 ELINK 1 3,5,11
echo 1 3,5,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_13511_${sn}_Quads.csv


# DAQ0 ELINK 1 3,6,7
echo 1 3,6,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1367_${sn}_Quads.csv


# DAQ0 ELINK 1 3,6,8
echo 1 3,6,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1368_${sn}_Quads.csv


# DAQ0 ELINK 1 3,6,9
echo 1 3,6,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1369_${sn}_Quads.csv


# DAQ0 ELINK 1 3,6,10
echo 1 3,6,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_13610_${sn}_Quads.csv


# DAQ0 ELINK 1 3,6,11
echo 1 3,6,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_13611_${sn}_Quads.csv


# DAQ0 ELINK 1 3,7,8
echo 1 3,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1378_${sn}_Quads.csv


# DAQ0 ELINK 1 3,7,9
echo 1 3,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1379_${sn}_Quads.csv


# DAQ0 ELINK 1 3,7,10
echo 1 3,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_13710_${sn}_Quads.csv


# DAQ0 ELINK 1 3,7,11
echo 1 3,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_13711_${sn}_Quads.csv


# DAQ0 ELINK 1 3,8,9
echo 1 3,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1389_${sn}_Quads.csv


# DAQ0 ELINK 1 3,8,10
echo 1 3,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_13810_${sn}_Quads.csv


# DAQ0 ELINK 1 3,8,11
echo 1 3,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_13811_${sn}_Quads.csv


# DAQ0 ELINK 1 3,9,10
echo 1 3,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_13910_${sn}_Quads.csv


# DAQ0 ELINK 1 3,9,11
echo 1 3,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_13911_${sn}_Quads.csv


# DAQ0 ELINK 1 3,10,11
echo 1 3,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_131011_${sn}_Quads.csv


# DAQ0 ELINK 1 4,5,6
echo 1 4,5,6 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1456_${sn}_Quads.csv


# DAQ0 ELINK 1 4,5,7
echo 1 4,5,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1457_${sn}_Quads.csv


# DAQ0 ELINK 1 4,5,8
echo 1 4,5,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1458_${sn}_Quads.csv


# DAQ0 ELINK 1 4,5,9
echo 1 4,5,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1459_${sn}_Quads.csv


# DAQ0 ELINK 1 4,5,10
echo 1 4,5,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_14510_${sn}_Quads.csv


# DAQ0 ELINK 1 4,5,11
echo 1 4,5,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_14511_${sn}_Quads.csv


# DAQ0 ELINK 1 4,6,7
echo 1 4,6,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1467_${sn}_Quads.csv


# DAQ0 ELINK 1 4,6,8
echo 1 4,6,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1468_${sn}_Quads.csv


# DAQ0 ELINK 1 4,6,9
echo 1 4,6,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1469_${sn}_Quads.csv


# DAQ0 ELINK 1 4,6,10
echo 1 4,6,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_14610_${sn}_Quads.csv


# DAQ0 ELINK 1 4,6,11
echo 1 4,6,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_14611_${sn}_Quads.csv


# DAQ0 ELINK 1 4,7,8
echo 1 4,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1478_${sn}_Quads.csv


# DAQ0 ELINK 1 4,7,9
echo 1 4,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1479_${sn}_Quads.csv


# DAQ0 ELINK 1 4,7,10
echo 1 4,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_14710_${sn}_Quads.csv


# DAQ0 ELINK 1 4,7,11
echo 1 4,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_14711_${sn}_Quads.csv


# DAQ0 ELINK 1 4,8,9
echo 1 4,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1489_${sn}_Quads.csv


# DAQ0 ELINK 1 4,8,10
echo 1 4,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_14810_${sn}_Quads.csv


# DAQ0 ELINK 1 4,8,11
echo 1 4,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_14811_${sn}_Quads.csv


# DAQ0 ELINK 1 4,9,10
echo 1 4,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_14910_${sn}_Quads.csv


# DAQ0 ELINK 1 4,9,11
echo 1 4,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_14911_${sn}_Quads.csv


# DAQ0 ELINK 1 4,10,11
echo 1 4,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_141011_${sn}_Quads.csv


# DAQ0 ELINK 1 5,6,7
echo 1 5,6,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1567_${sn}_Quads.csv


# DAQ0 ELINK 1 5,6,8
echo 1 5,6,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1568_${sn}_Quads.csv


# DAQ0 ELINK 1 5,6,9
echo 1 5,6,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1569_${sn}_Quads.csv


# DAQ0 ELINK 1 5,6,10
echo 1 5,6,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_15610_${sn}_Quads.csv


# DAQ0 ELINK 1 5,6,11
echo 1 5,6,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_15611_${sn}_Quads.csv


# DAQ0 ELINK 1 5,7,8
echo 1 5,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1578_${sn}_Quads.csv


# DAQ0 ELINK 1 5,7,9
echo 1 5,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1579_${sn}_Quads.csv


# DAQ0 ELINK 1 5,7,10
echo 1 5,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_15710_${sn}_Quads.csv


# DAQ0 ELINK 1 5,7,11
echo 1 5,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_15711_${sn}_Quads.csv


# DAQ0 ELINK 1 5,8,9
echo 1 5,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1589_${sn}_Quads.csv


# DAQ0 ELINK 1 5,8,10
echo 1 5,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_15810_${sn}_Quads.csv


# DAQ0 ELINK 1 5,8,11
echo 1 5,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_15811_${sn}_Quads.csv


# DAQ0 ELINK 1 5,9,10
echo 1 5,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_15910_${sn}_Quads.csv


# DAQ0 ELINK 1 5,9,11
echo 1 5,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_15911_${sn}_Quads.csv


# DAQ0 ELINK 1 5,10,11
echo 1 5,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_151011_${sn}_Quads.csv


# DAQ0 ELINK 1 6,7,8
echo 1 6,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1678_${sn}_Quads.csv


# DAQ0 ELINK 1 6,7,9
echo 1 6,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1679_${sn}_Quads.csv


# DAQ0 ELINK 1 6,7,10
echo 1 6,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_16710_${sn}_Quads.csv


# DAQ0 ELINK 1 6,7,11
echo 1 6,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_16711_${sn}_Quads.csv


# DAQ0 ELINK 1 6,8,9
echo 1 6,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1689_${sn}_Quads.csv


# DAQ0 ELINK 1 6,8,10
echo 1 6,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_16810_${sn}_Quads.csv


# DAQ0 ELINK 1 6,8,11
echo 1 6,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_16811_${sn}_Quads.csv


# DAQ0 ELINK 1 6,9,10
echo 1 6,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_16910_${sn}_Quads.csv


# DAQ0 ELINK 1 6,9,11
echo 1 6,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_16911_${sn}_Quads.csv


# DAQ0 ELINK 1 6,10,11
echo 1 6,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_161011_${sn}_Quads.csv


# DAQ0 ELINK 1 7,8,9
echo 1 7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_1789_${sn}_Quads.csv


# DAQ0 ELINK 1 7,8,10
echo 1 7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_17810_${sn}_Quads.csv


# DAQ0 ELINK 1 7,8,11
echo 1 7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_17811_${sn}_Quads.csv


# DAQ0 ELINK 1 7,9,10
echo 1 7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_17910_${sn}_Quads.csv


# DAQ0 ELINK 1 7,9,11
echo 1 7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_17911_${sn}_Quads.csv


# DAQ0 ELINK 1 7,10,11
echo 1 7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_171011_${sn}_Quads.csv


# DAQ0 ELINK 1 8,9,10
echo 1 8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_18910_${sn}_Quads.csv


# DAQ0 ELINK 1 8,9,11
echo 1 8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_18911_${sn}_Quads.csv


# DAQ0 ELINK 1 8,10,11
echo 1 8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_181011_${sn}_Quads.csv


# DAQ0 ELINK 1 9,10,11
echo 1 9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_191011_${sn}_Quads.csv


# DAQ0 ELINK 2 3,4,5
echo 2 3,4,5 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2345_${sn}_Quads.csv


# DAQ0 ELINK 2 3,4,6
echo 2 3,4,6 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2346_${sn}_Quads.csv


# DAQ0 ELINK 2 3,4,7
echo 2 3,4,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2347_${sn}_Quads.csv


# DAQ0 ELINK 2 3,4,8
echo 2 3,4,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2348_${sn}_Quads.csv


# DAQ0 ELINK 2 3,4,9
echo 2 3,4,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2349_${sn}_Quads.csv


# DAQ0 ELINK 2 3,4,10
echo 2 3,4,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_23410_${sn}_Quads.csv


# DAQ0 ELINK 2 3,4,11
echo 2 3,4,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_23411_${sn}_Quads.csv


# DAQ0 ELINK 2 3,5,6
echo 2 3,5,6 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2356_${sn}_Quads.csv


# DAQ0 ELINK 2 3,5,7
echo 2 3,5,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2357_${sn}_Quads.csv


# DAQ0 ELINK 2 3,5,8
echo 2 3,5,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2358_${sn}_Quads.csv


# DAQ0 ELINK 2 3,5,9
echo 2 3,5,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2359_${sn}_Quads.csv


# DAQ0 ELINK 2 3,5,10
echo 2 3,5,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_23510_${sn}_Quads.csv


# DAQ0 ELINK 2 3,5,11
echo 2 3,5,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_23511_${sn}_Quads.csv


# DAQ0 ELINK 2 3,6,7
echo 2 3,6,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2367_${sn}_Quads.csv


# DAQ0 ELINK 2 3,6,8
echo 2 3,6,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2368_${sn}_Quads.csv


# DAQ0 ELINK 2 3,6,9
echo 2 3,6,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2369_${sn}_Quads.csv


# DAQ0 ELINK 2 3,6,10
echo 2 3,6,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_23610_${sn}_Quads.csv


# DAQ0 ELINK 2 3,6,11
echo 2 3,6,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_23611_${sn}_Quads.csv


# DAQ0 ELINK 2 3,7,8
echo 2 3,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2378_${sn}_Quads.csv


# DAQ0 ELINK 2 3,7,9
echo 2 3,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2379_${sn}_Quads.csv


# DAQ0 ELINK 2 3,7,10
echo 2 3,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_23710_${sn}_Quads.csv


# DAQ0 ELINK 2 3,7,11
echo 2 3,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_23711_${sn}_Quads.csv


# DAQ0 ELINK 2 3,8,9
echo 2 3,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2389_${sn}_Quads.csv


# DAQ0 ELINK 2 3,8,10
echo 2 3,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_23810_${sn}_Quads.csv


# DAQ0 ELINK 2 3,8,11
echo 2 3,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_23811_${sn}_Quads.csv


# DAQ0 ELINK 2 3,9,10
echo 2 3,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_23910_${sn}_Quads.csv


# DAQ0 ELINK 2 3,9,11
echo 2 3,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_23911_${sn}_Quads.csv


# DAQ0 ELINK 2 3,10,11
echo 2 3,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_231011_${sn}_Quads.csv


# DAQ0 ELINK 2 4,5,6
echo 2 4,5,6 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2456_${sn}_Quads.csv


# DAQ0 ELINK 2 4,5,7
echo 2 4,5,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2457_${sn}_Quads.csv


# DAQ0 ELINK 2 4,5,8
echo 2 4,5,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2458_${sn}_Quads.csv


# DAQ0 ELINK 2 4,5,9
echo 2 4,5,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2459_${sn}_Quads.csv


# DAQ0 ELINK 2 4,5,10
echo 2 4,5,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_24510_${sn}_Quads.csv


# DAQ0 ELINK 2 4,5,11
echo 2 4,5,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_24511_${sn}_Quads.csv


# DAQ0 ELINK 2 4,6,7
echo 2 4,6,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2467_${sn}_Quads.csv


# DAQ0 ELINK 2 4,6,8
echo 2 4,6,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2468_${sn}_Quads.csv


# DAQ0 ELINK 2 4,6,9
echo 2 4,6,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2469_${sn}_Quads.csv


# DAQ0 ELINK 2 4,6,10
echo 2 4,6,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_24610_${sn}_Quads.csv


# DAQ0 ELINK 2 4,6,11
echo 2 4,6,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_24611_${sn}_Quads.csv


# DAQ0 ELINK 2 4,7,8
echo 2 4,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2478_${sn}_Quads.csv


# DAQ0 ELINK 2 4,7,9
echo 2 4,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2479_${sn}_Quads.csv


# DAQ0 ELINK 2 4,7,10
echo 2 4,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_24710_${sn}_Quads.csv


# DAQ0 ELINK 2 4,7,11
echo 2 4,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_24711_${sn}_Quads.csv


# DAQ0 ELINK 2 4,8,9
echo 2 4,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2489_${sn}_Quads.csv


# DAQ0 ELINK 2 4,8,10
echo 2 4,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_24810_${sn}_Quads.csv


# DAQ0 ELINK 2 4,8,11
echo 2 4,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_24811_${sn}_Quads.csv


# DAQ0 ELINK 2 4,9,10
echo 2 4,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_24910_${sn}_Quads.csv


# DAQ0 ELINK 2 4,9,11
echo 2 4,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_24911_${sn}_Quads.csv


# DAQ0 ELINK 2 4,10,11
echo 2 4,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_241011_${sn}_Quads.csv


# DAQ0 ELINK 2 5,6,7
echo 2 5,6,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2567_${sn}_Quads.csv


# DAQ0 ELINK 2 5,6,8
echo 2 5,6,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2568_${sn}_Quads.csv


# DAQ0 ELINK 2 5,6,9
echo 2 5,6,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2569_${sn}_Quads.csv


# DAQ0 ELINK 2 5,6,10
echo 2 5,6,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_25610_${sn}_Quads.csv


# DAQ0 ELINK 2 5,6,11
echo 2 5,6,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_25611_${sn}_Quads.csv


# DAQ0 ELINK 2 5,7,8
echo 2 5,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2578_${sn}_Quads.csv


# DAQ0 ELINK 2 5,7,9
echo 2 5,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2579_${sn}_Quads.csv


# DAQ0 ELINK 2 5,7,10
echo 2 5,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_25710_${sn}_Quads.csv


# DAQ0 ELINK 2 5,7,11
echo 2 5,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_25711_${sn}_Quads.csv


# DAQ0 ELINK 2 5,8,9
echo 2 5,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2589_${sn}_Quads.csv


# DAQ0 ELINK 2 5,8,10
echo 2 5,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_25810_${sn}_Quads.csv


# DAQ0 ELINK 2 5,8,11
echo 2 5,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_25811_${sn}_Quads.csv


# DAQ0 ELINK 2 5,9,10
echo 2 5,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_25910_${sn}_Quads.csv


# DAQ0 ELINK 2 5,9,11
echo 2 5,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_25911_${sn}_Quads.csv


# DAQ0 ELINK 2 5,10,11
echo 2 5,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_251011_${sn}_Quads.csv


# DAQ0 ELINK 2 6,7,8
echo 2 6,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2678_${sn}_Quads.csv


# DAQ0 ELINK 2 6,7,9
echo 2 6,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2679_${sn}_Quads.csv


# DAQ0 ELINK 2 6,7,10
echo 2 6,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_26710_${sn}_Quads.csv


# DAQ0 ELINK 2 6,7,11
echo 2 6,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_26711_${sn}_Quads.csv


# DAQ0 ELINK 2 6,8,9
echo 2 6,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2689_${sn}_Quads.csv


# DAQ0 ELINK 2 6,8,10
echo 2 6,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_26810_${sn}_Quads.csv


# DAQ0 ELINK 2 6,8,11
echo 2 6,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_26811_${sn}_Quads.csv


# DAQ0 ELINK 2 6,9,10
echo 2 6,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_26910_${sn}_Quads.csv


# DAQ0 ELINK 2 6,9,11
echo 2 6,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_26911_${sn}_Quads.csv


# DAQ0 ELINK 2 6,10,11
echo 2 6,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_261011_${sn}_Quads.csv


# DAQ0 ELINK 2 7,8,9
echo 2 7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_2789_${sn}_Quads.csv


# DAQ0 ELINK 2 7,8,10
echo 2 7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_27810_${sn}_Quads.csv


# DAQ0 ELINK 2 7,8,11
echo 2 7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_27811_${sn}_Quads.csv


# DAQ0 ELINK 2 7,9,10
echo 2 7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_27910_${sn}_Quads.csv


# DAQ0 ELINK 2 7,9,11
echo 2 7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_27911_${sn}_Quads.csv


# DAQ0 ELINK 2 7,10,11
echo 2 7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_271011_${sn}_Quads.csv


# DAQ0 ELINK 2 8,9,10
echo 2 8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_28910_${sn}_Quads.csv


# DAQ0 ELINK 2 8,9,11
echo 2 8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_28911_${sn}_Quads.csv


# DAQ0 ELINK 2 8,10,11
echo 2 8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_281011_${sn}_Quads.csv


# DAQ0 ELINK 2 9,10,11
echo 2 9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_291011_${sn}_Quads.csv


# DAQ0 ELINK 3 4,5,6
echo 3 4,5,6 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_3456_${sn}_Quads.csv


# DAQ0 ELINK 3 4,5,7
echo 3 4,5,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_3457_${sn}_Quads.csv


# DAQ0 ELINK 3 4,5,8
echo 3 4,5,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_3458_${sn}_Quads.csv


# DAQ0 ELINK 3 4,5,9
echo 3 4,5,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_3459_${sn}_Quads.csv


# DAQ0 ELINK 3 4,5,10
echo 3 4,5,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_34510_${sn}_Quads.csv


# DAQ0 ELINK 3 4,5,11
echo 3 4,5,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_34511_${sn}_Quads.csv


# DAQ0 ELINK 3 4,6,7
echo 3 4,6,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_3467_${sn}_Quads.csv


# DAQ0 ELINK 3 4,6,8
echo 3 4,6,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_3468_${sn}_Quads.csv


# DAQ0 ELINK 3 4,6,9
echo 3 4,6,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_3469_${sn}_Quads.csv


# DAQ0 ELINK 3 4,6,10
echo 3 4,6,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_34610_${sn}_Quads.csv


# DAQ0 ELINK 3 4,6,11
echo 3 4,6,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_34611_${sn}_Quads.csv


# DAQ0 ELINK 3 4,7,8
echo 3 4,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_3478_${sn}_Quads.csv


# DAQ0 ELINK 3 4,7,9
echo 3 4,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_3479_${sn}_Quads.csv


# DAQ0 ELINK 3 4,7,10
echo 3 4,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_34710_${sn}_Quads.csv


# DAQ0 ELINK 3 4,7,11
echo 3 4,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_34711_${sn}_Quads.csv


# DAQ0 ELINK 3 4,8,9
echo 3 4,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_3489_${sn}_Quads.csv


# DAQ0 ELINK 3 4,8,10
echo 3 4,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_34810_${sn}_Quads.csv


# DAQ0 ELINK 3 4,8,11
echo 3 4,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_34811_${sn}_Quads.csv


# DAQ0 ELINK 3 4,9,10
echo 3 4,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_34910_${sn}_Quads.csv


# DAQ0 ELINK 3 4,9,11
echo 3 4,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_34911_${sn}_Quads.csv


# DAQ0 ELINK 3 4,10,11
echo 3 4,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_341011_${sn}_Quads.csv


# DAQ0 ELINK 3 5,6,7
echo 3 5,6,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_3567_${sn}_Quads.csv


# DAQ0 ELINK 3 5,6,8
echo 3 5,6,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_3568_${sn}_Quads.csv


# DAQ0 ELINK 3 5,6,9
echo 3 5,6,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_3569_${sn}_Quads.csv


# DAQ0 ELINK 3 5,6,10
echo 3 5,6,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_35610_${sn}_Quads.csv


# DAQ0 ELINK 3 5,6,11
echo 3 5,6,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_35611_${sn}_Quads.csv


# DAQ0 ELINK 3 5,7,8
echo 3 5,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_3578_${sn}_Quads.csv


# DAQ0 ELINK 3 5,7,9
echo 3 5,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_3579_${sn}_Quads.csv


# DAQ0 ELINK 3 5,7,10
echo 3 5,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_35710_${sn}_Quads.csv


# DAQ0 ELINK 3 5,7,11
echo 3 5,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_35711_${sn}_Quads.csv


# DAQ0 ELINK 3 5,8,9
echo 3 5,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_3589_${sn}_Quads.csv


# DAQ0 ELINK 3 5,8,10
echo 3 5,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_35810_${sn}_Quads.csv


# DAQ0 ELINK 3 5,8,11
echo 3 5,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_35811_${sn}_Quads.csv


# DAQ0 ELINK 3 5,9,10
echo 3 5,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_35910_${sn}_Quads.csv


# DAQ0 ELINK 3 5,9,11
echo 3 5,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_35911_${sn}_Quads.csv


# DAQ0 ELINK 3 5,10,11
echo 3 5,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_351011_${sn}_Quads.csv


# DAQ0 ELINK 3 6,7,8
echo 3 6,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_3678_${sn}_Quads.csv


# DAQ0 ELINK 3 6,7,9
echo 3 6,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_3679_${sn}_Quads.csv


# DAQ0 ELINK 3 6,7,10
echo 3 6,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_36710_${sn}_Quads.csv


# DAQ0 ELINK 3 6,7,11
echo 3 6,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_36711_${sn}_Quads.csv


# DAQ0 ELINK 3 6,8,9
echo 3 6,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_3689_${sn}_Quads.csv


# DAQ0 ELINK 3 6,8,10
echo 3 6,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_36810_${sn}_Quads.csv


# DAQ0 ELINK 3 6,8,11
echo 3 6,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_36811_${sn}_Quads.csv


# DAQ0 ELINK 3 6,9,10
echo 3 6,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_36910_${sn}_Quads.csv


# DAQ0 ELINK 3 6,9,11
echo 3 6,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_36911_${sn}_Quads.csv


# DAQ0 ELINK 3 6,10,11
echo 3 6,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_361011_${sn}_Quads.csv


# DAQ0 ELINK 3 7,8,9
echo 3 7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_3789_${sn}_Quads.csv


# DAQ0 ELINK 3 7,8,10
echo 3 7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_37810_${sn}_Quads.csv


# DAQ0 ELINK 3 7,8,11
echo 3 7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_37811_${sn}_Quads.csv


# DAQ0 ELINK 3 7,9,10
echo 3 7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_37910_${sn}_Quads.csv


# DAQ0 ELINK 3 7,9,11
echo 3 7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_37911_${sn}_Quads.csv


# DAQ0 ELINK 3 7,10,11
echo 3 7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_371011_${sn}_Quads.csv


# DAQ0 ELINK 3 8,9,10
echo 3 8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_38910_${sn}_Quads.csv


# DAQ0 ELINK 3 8,9,11
echo 3 8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_38911_${sn}_Quads.csv


# DAQ0 ELINK 3 8,10,11
echo 3 8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_381011_${sn}_Quads.csv


# DAQ0 ELINK 3 9,10,11
echo 3 9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_391011_${sn}_Quads.csv


# DAQ0 ELINK 4 5,6,7
echo 4 5,6,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_4567_${sn}_Quads.csv


# DAQ0 ELINK 4 5,6,8
echo 4 5,6,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_4568_${sn}_Quads.csv


# DAQ0 ELINK 4 5,6,9
echo 4 5,6,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_4569_${sn}_Quads.csv


# DAQ0 ELINK 4 5,6,10
echo 4 5,6,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_45610_${sn}_Quads.csv


# DAQ0 ELINK 4 5,6,11
echo 4 5,6,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_45611_${sn}_Quads.csv


# DAQ0 ELINK 4 5,7,8
echo 4 5,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_4578_${sn}_Quads.csv


# DAQ0 ELINK 4 5,7,9
echo 4 5,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_4579_${sn}_Quads.csv


# DAQ0 ELINK 4 5,7,10
echo 4 5,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_45710_${sn}_Quads.csv


# DAQ0 ELINK 4 5,7,11
echo 4 5,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_45711_${sn}_Quads.csv


# DAQ0 ELINK 4 5,8,9
echo 4 5,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_4589_${sn}_Quads.csv


# DAQ0 ELINK 4 5,8,10
echo 4 5,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_45810_${sn}_Quads.csv


# DAQ0 ELINK 4 5,8,11
echo 4 5,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_45811_${sn}_Quads.csv


# DAQ0 ELINK 4 5,9,10
echo 4 5,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_45910_${sn}_Quads.csv


# DAQ0 ELINK 4 5,9,11
echo 4 5,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_45911_${sn}_Quads.csv


# DAQ0 ELINK 4 5,10,11
echo 4 5,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_451011_${sn}_Quads.csv


# DAQ0 ELINK 4 6,7,8
echo 4 6,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_4678_${sn}_Quads.csv


# DAQ0 ELINK 4 6,7,9
echo 4 6,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_4679_${sn}_Quads.csv


# DAQ0 ELINK 4 6,7,10
echo 4 6,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_46710_${sn}_Quads.csv


# DAQ0 ELINK 4 6,7,11
echo 4 6,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_46711_${sn}_Quads.csv


# DAQ0 ELINK 4 6,8,9
echo 4 6,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_4689_${sn}_Quads.csv


# DAQ0 ELINK 4 6,8,10
echo 4 6,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_46810_${sn}_Quads.csv


# DAQ0 ELINK 4 6,8,11
echo 4 6,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_46811_${sn}_Quads.csv


# DAQ0 ELINK 4 6,9,10
echo 4 6,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_46910_${sn}_Quads.csv


# DAQ0 ELINK 4 6,9,11
echo 4 6,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_46911_${sn}_Quads.csv


# DAQ0 ELINK 4 6,10,11
echo 4 6,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_461011_${sn}_Quads.csv


# DAQ0 ELINK 4 7,8,9
echo 4 7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_4789_${sn}_Quads.csv


# DAQ0 ELINK 4 7,8,10
echo 4 7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_47810_${sn}_Quads.csv


# DAQ0 ELINK 4 7,8,11
echo 4 7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_47811_${sn}_Quads.csv


# DAQ0 ELINK 4 7,9,10
echo 4 7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_47910_${sn}_Quads.csv


# DAQ0 ELINK 4 7,9,11
echo 4 7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_47911_${sn}_Quads.csv


# DAQ0 ELINK 4 7,10,11
echo 4 7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_471011_${sn}_Quads.csv


# DAQ0 ELINK 4 8,9,10
echo 4 8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_48910_${sn}_Quads.csv


# DAQ0 ELINK 4 8,9,11
echo 4 8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_48911_${sn}_Quads.csv


# DAQ0 ELINK 4 8,10,11
echo 4 8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_481011_${sn}_Quads.csv


# DAQ0 ELINK 4 9,10,11
echo 4 9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_491011_${sn}_Quads.csv


# DAQ0 ELINK 5 6,7,8
echo 5 6,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_5678_${sn}_Quads.csv


# DAQ0 ELINK 5 6,7,9
echo 5 6,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_5679_${sn}_Quads.csv


# DAQ0 ELINK 5 6,7,10
echo 5 6,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_56710_${sn}_Quads.csv


# DAQ0 ELINK 5 6,7,11
echo 5 6,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_56711_${sn}_Quads.csv


# DAQ0 ELINK 5 6,8,9
echo 5 6,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_5689_${sn}_Quads.csv


# DAQ0 ELINK 5 6,8,10
echo 5 6,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_56810_${sn}_Quads.csv


# DAQ0 ELINK 5 6,8,11
echo 5 6,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_56811_${sn}_Quads.csv


# DAQ0 ELINK 5 6,9,10
echo 5 6,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_56910_${sn}_Quads.csv


# DAQ0 ELINK 5 6,9,11
echo 5 6,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_56911_${sn}_Quads.csv


# DAQ0 ELINK 5 6,10,11
echo 5 6,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_561011_${sn}_Quads.csv


# DAQ0 ELINK 5 7,8,9
echo 5 7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_5789_${sn}_Quads.csv


# DAQ0 ELINK 5 7,8,10
echo 5 7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_57810_${sn}_Quads.csv


# DAQ0 ELINK 5 7,8,11
echo 5 7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_57811_${sn}_Quads.csv


# DAQ0 ELINK 5 7,9,10
echo 5 7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_57910_${sn}_Quads.csv


# DAQ0 ELINK 5 7,9,11
echo 5 7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_57911_${sn}_Quads.csv


# DAQ0 ELINK 5 7,10,11
echo 5 7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_571011_${sn}_Quads.csv


# DAQ0 ELINK 5 8,9,10
echo 5 8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_58910_${sn}_Quads.csv


# DAQ0 ELINK 5 8,9,11
echo 5 8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_58911_${sn}_Quads.csv


# DAQ0 ELINK 5 8,10,11
echo 5 8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_581011_${sn}_Quads.csv


# DAQ0 ELINK 5 9,10,11
echo 5 9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_591011_${sn}_Quads.csv


# DAQ0 ELINK 6 7,8,9
echo 6 7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_6789_${sn}_Quads.csv


# DAQ0 ELINK 6 7,8,10
echo 6 7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_67810_${sn}_Quads.csv


# DAQ0 ELINK 6 7,8,11
echo 6 7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_67811_${sn}_Quads.csv


# DAQ0 ELINK 6 7,9,10
echo 6 7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_67910_${sn}_Quads.csv


# DAQ0 ELINK 6 7,9,11
echo 6 7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_67911_${sn}_Quads.csv


# DAQ0 ELINK 6 7,10,11
echo 6 7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_671011_${sn}_Quads.csv


# DAQ0 ELINK 6 8,9,10
echo 6 8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_68910_${sn}_Quads.csv


# DAQ0 ELINK 6 8,9,11
echo 6 8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_68911_${sn}_Quads.csv


# DAQ0 ELINK 6 8,10,11
echo 6 8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_681011_${sn}_Quads.csv


# DAQ0 ELINK 6 9,10,11
echo 6 9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_691011_${sn}_Quads.csv


# DAQ0 ELINK 7 8,9,10
echo 7 8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_78910_${sn}_Quads.csv


# DAQ0 ELINK 7 8,9,11
echo 7 8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_78911_${sn}_Quads.csv


# DAQ0 ELINK 7 8,10,11
echo 7 8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_781011_${sn}_Quads.csv


# DAQ0 ELINK 7 9,10,11
echo 7 9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_791011_${sn}_Quads.csv


# DAQ0 ELINK 8 9,10,11
echo 8 9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Quads/DAQ0_891011_${sn}_Quads.csv




