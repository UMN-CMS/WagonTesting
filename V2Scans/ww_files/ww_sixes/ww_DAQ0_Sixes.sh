#!/bin/bash

sn=${1}

./wagoneer.py --tx 0 --mode 7
./wagoneer.py --tx 1 --mode 7
./wagoneer.py --tx 2 --mode 7
./wagoneer.py --tx 3 --mode 7
./wagoneer.py --tx 4 --mode 7

./wagoneer.py --tx 0 --mode 1

# DAQ0 ELINK 0 1,2,3,4,5
echo 0 1,2,3,4,5 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012345_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,3,4,6
echo 0 1,2,3,4,6 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012346_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,3,4,7
echo 0 1,2,3,4,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012347_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,3,4,8
echo 0 1,2,3,4,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012348_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,3,4,9
echo 0 1,2,3,4,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012349_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,3,4,10
echo 0 1,2,3,4,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0123410_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,3,4,11
echo 0 1,2,3,4,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0123411_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,3,5,6
echo 0 1,2,3,5,6 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012356_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,3,5,7
echo 0 1,2,3,5,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012357_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,3,5,8
echo 0 1,2,3,5,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012358_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,3,5,9
echo 0 1,2,3,5,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012359_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,3,5,10
echo 0 1,2,3,5,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0123510_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,3,5,11
echo 0 1,2,3,5,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0123511_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,3,6,7
echo 0 1,2,3,6,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012367_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,3,6,8
echo 0 1,2,3,6,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012368_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,3,6,9
echo 0 1,2,3,6,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012369_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,3,6,10
echo 0 1,2,3,6,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0123610_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,3,6,11
echo 0 1,2,3,6,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0123611_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,3,7,8
echo 0 1,2,3,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012378_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,3,7,9
echo 0 1,2,3,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012379_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,3,7,10
echo 0 1,2,3,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0123710_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,3,7,11
echo 0 1,2,3,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0123711_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,3,8,9
echo 0 1,2,3,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012389_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,3,8,10
echo 0 1,2,3,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0123810_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,3,8,11
echo 0 1,2,3,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0123811_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,3,9,10
echo 0 1,2,3,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0123910_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,3,9,11
echo 0 1,2,3,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0123911_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,3,10,11
echo 0 1,2,3,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_01231011_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,4,5,6
echo 0 1,2,4,5,6 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012456_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,4,5,7
echo 0 1,2,4,5,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012457_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,4,5,8
echo 0 1,2,4,5,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012458_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,4,5,9
echo 0 1,2,4,5,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012459_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,4,5,10
echo 0 1,2,4,5,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0124510_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,4,5,11
echo 0 1,2,4,5,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0124511_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,4,6,7
echo 0 1,2,4,6,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012467_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,4,6,8
echo 0 1,2,4,6,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012468_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,4,6,9
echo 0 1,2,4,6,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012469_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,4,6,10
echo 0 1,2,4,6,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0124610_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,4,6,11
echo 0 1,2,4,6,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0124611_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,4,7,8
echo 0 1,2,4,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012478_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,4,7,9
echo 0 1,2,4,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012479_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,4,7,10
echo 0 1,2,4,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0124710_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,4,7,11
echo 0 1,2,4,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0124711_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,4,8,9
echo 0 1,2,4,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012489_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,4,8,10
echo 0 1,2,4,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0124810_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,4,8,11
echo 0 1,2,4,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0124811_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,4,9,10
echo 0 1,2,4,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0124910_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,4,9,11
echo 0 1,2,4,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0124911_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,4,10,11
echo 0 1,2,4,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_01241011_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,5,6,7
echo 0 1,2,5,6,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012567_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,5,6,8
echo 0 1,2,5,6,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012568_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,5,6,9
echo 0 1,2,5,6,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012569_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,5,6,10
echo 0 1,2,5,6,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0125610_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,5,6,11
echo 0 1,2,5,6,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0125611_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,5,7,8
echo 0 1,2,5,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012578_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,5,7,9
echo 0 1,2,5,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012579_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,5,7,10
echo 0 1,2,5,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0125710_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,5,7,11
echo 0 1,2,5,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0125711_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,5,8,9
echo 0 1,2,5,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012589_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,5,8,10
echo 0 1,2,5,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0125810_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,5,8,11
echo 0 1,2,5,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0125811_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,5,9,10
echo 0 1,2,5,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0125910_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,5,9,11
echo 0 1,2,5,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0125911_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,5,10,11
echo 0 1,2,5,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_01251011_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,6,7,8
echo 0 1,2,6,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012678_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,6,7,9
echo 0 1,2,6,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012679_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,6,7,10
echo 0 1,2,6,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0126710_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,6,7,11
echo 0 1,2,6,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0126711_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,6,8,9
echo 0 1,2,6,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012689_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,6,8,10
echo 0 1,2,6,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0126810_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,6,8,11
echo 0 1,2,6,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0126811_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,6,9,10
echo 0 1,2,6,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0126910_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,6,9,11
echo 0 1,2,6,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0126911_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,6,10,11
echo 0 1,2,6,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_01261011_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,7,8,9
echo 0 1,2,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_012789_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,7,8,10
echo 0 1,2,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0127810_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,7,8,11
echo 0 1,2,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0127811_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,7,9,10
echo 0 1,2,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0127910_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,7,9,11
echo 0 1,2,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0127911_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,7,10,11
echo 0 1,2,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_01271011_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,8,9,10
echo 0 1,2,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0128910_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,8,9,11
echo 0 1,2,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0128911_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,8,10,11
echo 0 1,2,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_01281011_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,2,9,10,11
echo 0 1,2,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_01291011_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,4,5,6
echo 0 1,3,4,5,6 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_013456_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,4,5,7
echo 0 1,3,4,5,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_013457_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,4,5,8
echo 0 1,3,4,5,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_013458_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,4,5,9
echo 0 1,3,4,5,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_013459_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,4,5,10
echo 0 1,3,4,5,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0134510_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,4,5,11
echo 0 1,3,4,5,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0134511_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,4,6,7
echo 0 1,3,4,6,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_013467_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,4,6,8
echo 0 1,3,4,6,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_013468_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,4,6,9
echo 0 1,3,4,6,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_013469_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,4,6,10
echo 0 1,3,4,6,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0134610_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,4,6,11
echo 0 1,3,4,6,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0134611_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,4,7,8
echo 0 1,3,4,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_013478_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,4,7,9
echo 0 1,3,4,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_013479_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,4,7,10
echo 0 1,3,4,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0134710_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,4,7,11
echo 0 1,3,4,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0134711_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,4,8,9
echo 0 1,3,4,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_013489_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,4,8,10
echo 0 1,3,4,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0134810_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,4,8,11
echo 0 1,3,4,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0134811_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,4,9,10
echo 0 1,3,4,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0134910_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,4,9,11
echo 0 1,3,4,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0134911_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,4,10,11
echo 0 1,3,4,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_01341011_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,5,6,7
echo 0 1,3,5,6,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_013567_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,5,6,8
echo 0 1,3,5,6,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_013568_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,5,6,9
echo 0 1,3,5,6,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_013569_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,5,6,10
echo 0 1,3,5,6,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0135610_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,5,6,11
echo 0 1,3,5,6,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0135611_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,5,7,8
echo 0 1,3,5,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_013578_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,5,7,9
echo 0 1,3,5,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_013579_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,5,7,10
echo 0 1,3,5,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0135710_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,5,7,11
echo 0 1,3,5,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0135711_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,5,8,9
echo 0 1,3,5,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_013589_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,5,8,10
echo 0 1,3,5,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0135810_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,5,8,11
echo 0 1,3,5,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0135811_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,5,9,10
echo 0 1,3,5,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0135910_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,5,9,11
echo 0 1,3,5,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0135911_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,5,10,11
echo 0 1,3,5,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_01351011_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,6,7,8
echo 0 1,3,6,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_013678_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,6,7,9
echo 0 1,3,6,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_013679_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,6,7,10
echo 0 1,3,6,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0136710_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,6,7,11
echo 0 1,3,6,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0136711_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,6,8,9
echo 0 1,3,6,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_013689_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,6,8,10
echo 0 1,3,6,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0136810_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,6,8,11
echo 0 1,3,6,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0136811_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,6,9,10
echo 0 1,3,6,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0136910_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,6,9,11
echo 0 1,3,6,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0136911_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,6,10,11
echo 0 1,3,6,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_01361011_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,7,8,9
echo 0 1,3,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_013789_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,7,8,10
echo 0 1,3,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0137810_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,7,8,11
echo 0 1,3,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0137811_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,7,9,10
echo 0 1,3,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0137910_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,7,9,11
echo 0 1,3,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0137911_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,7,10,11
echo 0 1,3,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_01371011_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,8,9,10
echo 0 1,3,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0138910_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,8,9,11
echo 0 1,3,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0138911_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,8,10,11
echo 0 1,3,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_01381011_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,3,9,10,11
echo 0 1,3,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_01391011_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,5,6,7
echo 0 1,4,5,6,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_014567_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,5,6,8
echo 0 1,4,5,6,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_014568_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,5,6,9
echo 0 1,4,5,6,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_014569_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,5,6,10
echo 0 1,4,5,6,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0145610_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,5,6,11
echo 0 1,4,5,6,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0145611_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,5,7,8
echo 0 1,4,5,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_014578_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,5,7,9
echo 0 1,4,5,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_014579_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,5,7,10
echo 0 1,4,5,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0145710_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,5,7,11
echo 0 1,4,5,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0145711_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,5,8,9
echo 0 1,4,5,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_014589_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,5,8,10
echo 0 1,4,5,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0145810_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,5,8,11
echo 0 1,4,5,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0145811_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,5,9,10
echo 0 1,4,5,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0145910_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,5,9,11
echo 0 1,4,5,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0145911_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,5,10,11
echo 0 1,4,5,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_01451011_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,6,7,8
echo 0 1,4,6,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_014678_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,6,7,9
echo 0 1,4,6,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_014679_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,6,7,10
echo 0 1,4,6,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0146710_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,6,7,11
echo 0 1,4,6,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0146711_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,6,8,9
echo 0 1,4,6,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_014689_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,6,8,10
echo 0 1,4,6,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0146810_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,6,8,11
echo 0 1,4,6,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0146811_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,6,9,10
echo 0 1,4,6,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0146910_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,6,9,11
echo 0 1,4,6,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0146911_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,6,10,11
echo 0 1,4,6,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_01461011_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,7,8,9
echo 0 1,4,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_014789_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,7,8,10
echo 0 1,4,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0147810_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,7,8,11
echo 0 1,4,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0147811_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,7,9,10
echo 0 1,4,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0147910_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,7,9,11
echo 0 1,4,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0147911_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,7,10,11
echo 0 1,4,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_01471011_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,8,9,10
echo 0 1,4,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0148910_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,8,9,11
echo 0 1,4,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0148911_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,8,10,11
echo 0 1,4,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_01481011_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,4,9,10,11
echo 0 1,4,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_01491011_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,5,6,7,8
echo 0 1,5,6,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_015678_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,5,6,7,9
echo 0 1,5,6,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_015679_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,5,6,7,10
echo 0 1,5,6,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0156710_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,5,6,7,11
echo 0 1,5,6,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0156711_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,5,6,8,9
echo 0 1,5,6,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_015689_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,5,6,8,10
echo 0 1,5,6,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0156810_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,5,6,8,11
echo 0 1,5,6,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0156811_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,5,6,9,10
echo 0 1,5,6,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0156910_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,5,6,9,11
echo 0 1,5,6,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0156911_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,5,6,10,11
echo 0 1,5,6,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_01561011_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,5,7,8,9
echo 0 1,5,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_015789_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,5,7,8,10
echo 0 1,5,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0157810_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,5,7,8,11
echo 0 1,5,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0157811_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,5,7,9,10
echo 0 1,5,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0157910_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,5,7,9,11
echo 0 1,5,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0157911_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,5,7,10,11
echo 0 1,5,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_01571011_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,5,8,9,10
echo 0 1,5,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0158910_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,5,8,9,11
echo 0 1,5,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0158911_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,5,8,10,11
echo 0 1,5,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_01581011_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,5,9,10,11
echo 0 1,5,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_01591011_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,6,7,8,9
echo 0 1,6,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_016789_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,6,7,8,10
echo 0 1,6,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0167810_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,6,7,8,11
echo 0 1,6,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0167811_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,6,7,9,10
echo 0 1,6,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0167910_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,6,7,9,11
echo 0 1,6,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0167911_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,6,7,10,11
echo 0 1,6,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_01671011_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,6,8,9,10
echo 0 1,6,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0168910_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,6,8,9,11
echo 0 1,6,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0168911_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,6,8,10,11
echo 0 1,6,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_01681011_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,6,9,10,11
echo 0 1,6,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_01691011_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,7,8,9,10
echo 0 1,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0178910_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,7,8,9,11
echo 0 1,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0178911_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,7,8,10,11
echo 0 1,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_01781011_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,7,9,10,11
echo 0 1,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_01791011_${sn}_Sixes.csv


# DAQ0 ELINK 0 1,8,9,10,11
echo 0 1,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_01891011_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,4,5,6
echo 0 2,3,4,5,6 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_023456_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,4,5,7
echo 0 2,3,4,5,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_023457_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,4,5,8
echo 0 2,3,4,5,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_023458_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,4,5,9
echo 0 2,3,4,5,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_023459_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,4,5,10
echo 0 2,3,4,5,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0234510_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,4,5,11
echo 0 2,3,4,5,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0234511_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,4,6,7
echo 0 2,3,4,6,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_023467_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,4,6,8
echo 0 2,3,4,6,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_023468_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,4,6,9
echo 0 2,3,4,6,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_023469_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,4,6,10
echo 0 2,3,4,6,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0234610_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,4,6,11
echo 0 2,3,4,6,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0234611_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,4,7,8
echo 0 2,3,4,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_023478_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,4,7,9
echo 0 2,3,4,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_023479_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,4,7,10
echo 0 2,3,4,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0234710_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,4,7,11
echo 0 2,3,4,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0234711_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,4,8,9
echo 0 2,3,4,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_023489_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,4,8,10
echo 0 2,3,4,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0234810_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,4,8,11
echo 0 2,3,4,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0234811_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,4,9,10
echo 0 2,3,4,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0234910_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,4,9,11
echo 0 2,3,4,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0234911_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,4,10,11
echo 0 2,3,4,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_02341011_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,5,6,7
echo 0 2,3,5,6,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_023567_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,5,6,8
echo 0 2,3,5,6,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_023568_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,5,6,9
echo 0 2,3,5,6,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_023569_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,5,6,10
echo 0 2,3,5,6,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0235610_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,5,6,11
echo 0 2,3,5,6,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0235611_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,5,7,8
echo 0 2,3,5,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_023578_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,5,7,9
echo 0 2,3,5,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_023579_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,5,7,10
echo 0 2,3,5,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0235710_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,5,7,11
echo 0 2,3,5,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0235711_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,5,8,9
echo 0 2,3,5,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_023589_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,5,8,10
echo 0 2,3,5,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0235810_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,5,8,11
echo 0 2,3,5,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0235811_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,5,9,10
echo 0 2,3,5,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0235910_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,5,9,11
echo 0 2,3,5,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0235911_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,5,10,11
echo 0 2,3,5,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_02351011_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,6,7,8
echo 0 2,3,6,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_023678_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,6,7,9
echo 0 2,3,6,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_023679_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,6,7,10
echo 0 2,3,6,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0236710_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,6,7,11
echo 0 2,3,6,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0236711_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,6,8,9
echo 0 2,3,6,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_023689_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,6,8,10
echo 0 2,3,6,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0236810_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,6,8,11
echo 0 2,3,6,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0236811_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,6,9,10
echo 0 2,3,6,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0236910_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,6,9,11
echo 0 2,3,6,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0236911_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,6,10,11
echo 0 2,3,6,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_02361011_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,7,8,9
echo 0 2,3,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_023789_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,7,8,10
echo 0 2,3,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0237810_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,7,8,11
echo 0 2,3,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0237811_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,7,9,10
echo 0 2,3,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0237910_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,7,9,11
echo 0 2,3,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0237911_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,7,10,11
echo 0 2,3,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_02371011_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,8,9,10
echo 0 2,3,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0238910_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,8,9,11
echo 0 2,3,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0238911_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,8,10,11
echo 0 2,3,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_02381011_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,3,9,10,11
echo 0 2,3,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_02391011_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,5,6,7
echo 0 2,4,5,6,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_024567_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,5,6,8
echo 0 2,4,5,6,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_024568_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,5,6,9
echo 0 2,4,5,6,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_024569_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,5,6,10
echo 0 2,4,5,6,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0245610_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,5,6,11
echo 0 2,4,5,6,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0245611_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,5,7,8
echo 0 2,4,5,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_024578_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,5,7,9
echo 0 2,4,5,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_024579_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,5,7,10
echo 0 2,4,5,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0245710_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,5,7,11
echo 0 2,4,5,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0245711_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,5,8,9
echo 0 2,4,5,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_024589_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,5,8,10
echo 0 2,4,5,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0245810_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,5,8,11
echo 0 2,4,5,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0245811_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,5,9,10
echo 0 2,4,5,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0245910_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,5,9,11
echo 0 2,4,5,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0245911_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,5,10,11
echo 0 2,4,5,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_02451011_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,6,7,8
echo 0 2,4,6,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_024678_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,6,7,9
echo 0 2,4,6,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_024679_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,6,7,10
echo 0 2,4,6,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0246710_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,6,7,11
echo 0 2,4,6,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0246711_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,6,8,9
echo 0 2,4,6,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_024689_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,6,8,10
echo 0 2,4,6,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0246810_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,6,8,11
echo 0 2,4,6,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0246811_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,6,9,10
echo 0 2,4,6,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0246910_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,6,9,11
echo 0 2,4,6,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0246911_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,6,10,11
echo 0 2,4,6,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_02461011_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,7,8,9
echo 0 2,4,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_024789_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,7,8,10
echo 0 2,4,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0247810_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,7,8,11
echo 0 2,4,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0247811_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,7,9,10
echo 0 2,4,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0247910_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,7,9,11
echo 0 2,4,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0247911_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,7,10,11
echo 0 2,4,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_02471011_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,8,9,10
echo 0 2,4,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0248910_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,8,9,11
echo 0 2,4,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0248911_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,8,10,11
echo 0 2,4,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_02481011_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,4,9,10,11
echo 0 2,4,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_02491011_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,5,6,7,8
echo 0 2,5,6,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_025678_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,5,6,7,9
echo 0 2,5,6,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_025679_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,5,6,7,10
echo 0 2,5,6,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0256710_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,5,6,7,11
echo 0 2,5,6,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0256711_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,5,6,8,9
echo 0 2,5,6,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_025689_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,5,6,8,10
echo 0 2,5,6,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0256810_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,5,6,8,11
echo 0 2,5,6,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0256811_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,5,6,9,10
echo 0 2,5,6,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0256910_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,5,6,9,11
echo 0 2,5,6,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0256911_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,5,6,10,11
echo 0 2,5,6,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_02561011_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,5,7,8,9
echo 0 2,5,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_025789_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,5,7,8,10
echo 0 2,5,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0257810_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,5,7,8,11
echo 0 2,5,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0257811_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,5,7,9,10
echo 0 2,5,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0257910_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,5,7,9,11
echo 0 2,5,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0257911_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,5,7,10,11
echo 0 2,5,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_02571011_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,5,8,9,10
echo 0 2,5,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0258910_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,5,8,9,11
echo 0 2,5,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0258911_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,5,8,10,11
echo 0 2,5,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_02581011_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,5,9,10,11
echo 0 2,5,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_02591011_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,6,7,8,9
echo 0 2,6,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_026789_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,6,7,8,10
echo 0 2,6,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0267810_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,6,7,8,11
echo 0 2,6,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0267811_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,6,7,9,10
echo 0 2,6,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0267910_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,6,7,9,11
echo 0 2,6,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0267911_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,6,7,10,11
echo 0 2,6,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_02671011_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,6,8,9,10
echo 0 2,6,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0268910_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,6,8,9,11
echo 0 2,6,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0268911_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,6,8,10,11
echo 0 2,6,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_02681011_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,6,9,10,11
echo 0 2,6,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_02691011_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,7,8,9,10
echo 0 2,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0278910_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,7,8,9,11
echo 0 2,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0278911_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,7,8,10,11
echo 0 2,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_02781011_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,7,9,10,11
echo 0 2,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_02791011_${sn}_Sixes.csv


# DAQ0 ELINK 0 2,8,9,10,11
echo 0 2,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_02891011_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,5,6,7
echo 0 3,4,5,6,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_034567_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,5,6,8
echo 0 3,4,5,6,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_034568_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,5,6,9
echo 0 3,4,5,6,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_034569_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,5,6,10
echo 0 3,4,5,6,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0345610_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,5,6,11
echo 0 3,4,5,6,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0345611_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,5,7,8
echo 0 3,4,5,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_034578_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,5,7,9
echo 0 3,4,5,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_034579_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,5,7,10
echo 0 3,4,5,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0345710_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,5,7,11
echo 0 3,4,5,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0345711_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,5,8,9
echo 0 3,4,5,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_034589_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,5,8,10
echo 0 3,4,5,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0345810_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,5,8,11
echo 0 3,4,5,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0345811_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,5,9,10
echo 0 3,4,5,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0345910_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,5,9,11
echo 0 3,4,5,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0345911_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,5,10,11
echo 0 3,4,5,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_03451011_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,6,7,8
echo 0 3,4,6,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_034678_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,6,7,9
echo 0 3,4,6,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_034679_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,6,7,10
echo 0 3,4,6,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0346710_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,6,7,11
echo 0 3,4,6,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0346711_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,6,8,9
echo 0 3,4,6,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_034689_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,6,8,10
echo 0 3,4,6,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0346810_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,6,8,11
echo 0 3,4,6,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0346811_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,6,9,10
echo 0 3,4,6,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0346910_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,6,9,11
echo 0 3,4,6,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0346911_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,6,10,11
echo 0 3,4,6,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_03461011_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,7,8,9
echo 0 3,4,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_034789_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,7,8,10
echo 0 3,4,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0347810_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,7,8,11
echo 0 3,4,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0347811_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,7,9,10
echo 0 3,4,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0347910_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,7,9,11
echo 0 3,4,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0347911_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,7,10,11
echo 0 3,4,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_03471011_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,8,9,10
echo 0 3,4,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0348910_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,8,9,11
echo 0 3,4,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0348911_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,8,10,11
echo 0 3,4,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_03481011_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,4,9,10,11
echo 0 3,4,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_03491011_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,5,6,7,8
echo 0 3,5,6,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_035678_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,5,6,7,9
echo 0 3,5,6,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_035679_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,5,6,7,10
echo 0 3,5,6,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0356710_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,5,6,7,11
echo 0 3,5,6,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0356711_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,5,6,8,9
echo 0 3,5,6,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_035689_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,5,6,8,10
echo 0 3,5,6,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0356810_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,5,6,8,11
echo 0 3,5,6,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0356811_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,5,6,9,10
echo 0 3,5,6,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0356910_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,5,6,9,11
echo 0 3,5,6,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0356911_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,5,6,10,11
echo 0 3,5,6,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_03561011_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,5,7,8,9
echo 0 3,5,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_035789_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,5,7,8,10
echo 0 3,5,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0357810_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,5,7,8,11
echo 0 3,5,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0357811_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,5,7,9,10
echo 0 3,5,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0357910_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,5,7,9,11
echo 0 3,5,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0357911_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,5,7,10,11
echo 0 3,5,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_03571011_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,5,8,9,10
echo 0 3,5,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0358910_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,5,8,9,11
echo 0 3,5,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0358911_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,5,8,10,11
echo 0 3,5,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_03581011_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,5,9,10,11
echo 0 3,5,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_03591011_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,6,7,8,9
echo 0 3,6,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_036789_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,6,7,8,10
echo 0 3,6,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0367810_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,6,7,8,11
echo 0 3,6,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0367811_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,6,7,9,10
echo 0 3,6,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0367910_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,6,7,9,11
echo 0 3,6,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0367911_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,6,7,10,11
echo 0 3,6,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_03671011_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,6,8,9,10
echo 0 3,6,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0368910_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,6,8,9,11
echo 0 3,6,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0368911_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,6,8,10,11
echo 0 3,6,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_03681011_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,6,9,10,11
echo 0 3,6,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_03691011_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,7,8,9,10
echo 0 3,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0378910_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,7,8,9,11
echo 0 3,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0378911_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,7,8,10,11
echo 0 3,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_03781011_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,7,9,10,11
echo 0 3,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_03791011_${sn}_Sixes.csv


# DAQ0 ELINK 0 3,8,9,10,11
echo 0 3,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_03891011_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,5,6,7,8
echo 0 4,5,6,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_045678_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,5,6,7,9
echo 0 4,5,6,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_045679_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,5,6,7,10
echo 0 4,5,6,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0456710_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,5,6,7,11
echo 0 4,5,6,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0456711_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,5,6,8,9
echo 0 4,5,6,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_045689_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,5,6,8,10
echo 0 4,5,6,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0456810_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,5,6,8,11
echo 0 4,5,6,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0456811_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,5,6,9,10
echo 0 4,5,6,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0456910_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,5,6,9,11
echo 0 4,5,6,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0456911_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,5,6,10,11
echo 0 4,5,6,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_04561011_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,5,7,8,9
echo 0 4,5,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_045789_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,5,7,8,10
echo 0 4,5,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0457810_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,5,7,8,11
echo 0 4,5,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0457811_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,5,7,9,10
echo 0 4,5,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0457910_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,5,7,9,11
echo 0 4,5,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0457911_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,5,7,10,11
echo 0 4,5,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_04571011_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,5,8,9,10
echo 0 4,5,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0458910_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,5,8,9,11
echo 0 4,5,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0458911_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,5,8,10,11
echo 0 4,5,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_04581011_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,5,9,10,11
echo 0 4,5,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_04591011_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,6,7,8,9
echo 0 4,6,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_046789_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,6,7,8,10
echo 0 4,6,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0467810_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,6,7,8,11
echo 0 4,6,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0467811_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,6,7,9,10
echo 0 4,6,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0467910_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,6,7,9,11
echo 0 4,6,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0467911_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,6,7,10,11
echo 0 4,6,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_04671011_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,6,8,9,10
echo 0 4,6,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0468910_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,6,8,9,11
echo 0 4,6,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0468911_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,6,8,10,11
echo 0 4,6,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_04681011_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,6,9,10,11
echo 0 4,6,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_04691011_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,7,8,9,10
echo 0 4,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0478910_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,7,8,9,11
echo 0 4,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0478911_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,7,8,10,11
echo 0 4,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_04781011_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,7,9,10,11
echo 0 4,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_04791011_${sn}_Sixes.csv


# DAQ0 ELINK 0 4,8,9,10,11
echo 0 4,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_04891011_${sn}_Sixes.csv


# DAQ0 ELINK 0 5,6,7,8,9
echo 0 5,6,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_056789_${sn}_Sixes.csv


# DAQ0 ELINK 0 5,6,7,8,10
echo 0 5,6,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0567810_${sn}_Sixes.csv


# DAQ0 ELINK 0 5,6,7,8,11
echo 0 5,6,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0567811_${sn}_Sixes.csv


# DAQ0 ELINK 0 5,6,7,9,10
echo 0 5,6,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0567910_${sn}_Sixes.csv


# DAQ0 ELINK 0 5,6,7,9,11
echo 0 5,6,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0567911_${sn}_Sixes.csv


# DAQ0 ELINK 0 5,6,7,10,11
echo 0 5,6,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_05671011_${sn}_Sixes.csv


# DAQ0 ELINK 0 5,6,8,9,10
echo 0 5,6,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0568910_${sn}_Sixes.csv


# DAQ0 ELINK 0 5,6,8,9,11
echo 0 5,6,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0568911_${sn}_Sixes.csv


# DAQ0 ELINK 0 5,6,8,10,11
echo 0 5,6,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_05681011_${sn}_Sixes.csv


# DAQ0 ELINK 0 5,6,9,10,11
echo 0 5,6,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_05691011_${sn}_Sixes.csv


# DAQ0 ELINK 0 5,7,8,9,10
echo 0 5,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0578910_${sn}_Sixes.csv


# DAQ0 ELINK 0 5,7,8,9,11
echo 0 5,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0578911_${sn}_Sixes.csv


# DAQ0 ELINK 0 5,7,8,10,11
echo 0 5,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_05781011_${sn}_Sixes.csv


# DAQ0 ELINK 0 5,7,9,10,11
echo 0 5,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_05791011_${sn}_Sixes.csv


# DAQ0 ELINK 0 5,8,9,10,11
echo 0 5,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_05891011_${sn}_Sixes.csv


# DAQ0 ELINK 0 6,7,8,9,10
echo 0 6,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0678910_${sn}_Sixes.csv


# DAQ0 ELINK 0 6,7,8,9,11
echo 0 6,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_0678911_${sn}_Sixes.csv


# DAQ0 ELINK 0 6,7,8,10,11
echo 0 6,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_06781011_${sn}_Sixes.csv


# DAQ0 ELINK 0 6,7,9,10,11
echo 0 6,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_06791011_${sn}_Sixes.csv


# DAQ0 ELINK 0 6,8,9,10,11
echo 0 6,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_06891011_${sn}_Sixes.csv


# DAQ0 ELINK 0 7,8,9,10,11
echo 0 7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_07891011_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,4,5,6
echo 1 2,3,4,5,6 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_123456_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,4,5,7
echo 1 2,3,4,5,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_123457_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,4,5,8
echo 1 2,3,4,5,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_123458_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,4,5,9
echo 1 2,3,4,5,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_123459_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,4,5,10
echo 1 2,3,4,5,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1234510_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,4,5,11
echo 1 2,3,4,5,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1234511_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,4,6,7
echo 1 2,3,4,6,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_123467_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,4,6,8
echo 1 2,3,4,6,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_123468_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,4,6,9
echo 1 2,3,4,6,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_123469_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,4,6,10
echo 1 2,3,4,6,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1234610_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,4,6,11
echo 1 2,3,4,6,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1234611_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,4,7,8
echo 1 2,3,4,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_123478_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,4,7,9
echo 1 2,3,4,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_123479_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,4,7,10
echo 1 2,3,4,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1234710_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,4,7,11
echo 1 2,3,4,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1234711_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,4,8,9
echo 1 2,3,4,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_123489_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,4,8,10
echo 1 2,3,4,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1234810_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,4,8,11
echo 1 2,3,4,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1234811_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,4,9,10
echo 1 2,3,4,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1234910_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,4,9,11
echo 1 2,3,4,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1234911_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,4,10,11
echo 1 2,3,4,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_12341011_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,5,6,7
echo 1 2,3,5,6,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_123567_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,5,6,8
echo 1 2,3,5,6,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_123568_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,5,6,9
echo 1 2,3,5,6,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_123569_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,5,6,10
echo 1 2,3,5,6,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1235610_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,5,6,11
echo 1 2,3,5,6,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1235611_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,5,7,8
echo 1 2,3,5,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_123578_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,5,7,9
echo 1 2,3,5,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_123579_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,5,7,10
echo 1 2,3,5,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1235710_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,5,7,11
echo 1 2,3,5,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1235711_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,5,8,9
echo 1 2,3,5,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_123589_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,5,8,10
echo 1 2,3,5,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1235810_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,5,8,11
echo 1 2,3,5,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1235811_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,5,9,10
echo 1 2,3,5,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1235910_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,5,9,11
echo 1 2,3,5,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1235911_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,5,10,11
echo 1 2,3,5,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_12351011_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,6,7,8
echo 1 2,3,6,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_123678_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,6,7,9
echo 1 2,3,6,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_123679_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,6,7,10
echo 1 2,3,6,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1236710_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,6,7,11
echo 1 2,3,6,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1236711_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,6,8,9
echo 1 2,3,6,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_123689_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,6,8,10
echo 1 2,3,6,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1236810_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,6,8,11
echo 1 2,3,6,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1236811_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,6,9,10
echo 1 2,3,6,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1236910_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,6,9,11
echo 1 2,3,6,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1236911_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,6,10,11
echo 1 2,3,6,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_12361011_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,7,8,9
echo 1 2,3,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_123789_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,7,8,10
echo 1 2,3,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1237810_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,7,8,11
echo 1 2,3,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1237811_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,7,9,10
echo 1 2,3,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1237910_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,7,9,11
echo 1 2,3,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1237911_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,7,10,11
echo 1 2,3,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_12371011_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,8,9,10
echo 1 2,3,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1238910_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,8,9,11
echo 1 2,3,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1238911_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,8,10,11
echo 1 2,3,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_12381011_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,3,9,10,11
echo 1 2,3,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_12391011_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,5,6,7
echo 1 2,4,5,6,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_124567_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,5,6,8
echo 1 2,4,5,6,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_124568_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,5,6,9
echo 1 2,4,5,6,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_124569_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,5,6,10
echo 1 2,4,5,6,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1245610_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,5,6,11
echo 1 2,4,5,6,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1245611_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,5,7,8
echo 1 2,4,5,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_124578_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,5,7,9
echo 1 2,4,5,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_124579_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,5,7,10
echo 1 2,4,5,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1245710_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,5,7,11
echo 1 2,4,5,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1245711_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,5,8,9
echo 1 2,4,5,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_124589_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,5,8,10
echo 1 2,4,5,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1245810_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,5,8,11
echo 1 2,4,5,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1245811_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,5,9,10
echo 1 2,4,5,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1245910_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,5,9,11
echo 1 2,4,5,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1245911_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,5,10,11
echo 1 2,4,5,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_12451011_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,6,7,8
echo 1 2,4,6,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_124678_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,6,7,9
echo 1 2,4,6,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_124679_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,6,7,10
echo 1 2,4,6,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1246710_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,6,7,11
echo 1 2,4,6,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1246711_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,6,8,9
echo 1 2,4,6,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_124689_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,6,8,10
echo 1 2,4,6,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1246810_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,6,8,11
echo 1 2,4,6,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1246811_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,6,9,10
echo 1 2,4,6,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1246910_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,6,9,11
echo 1 2,4,6,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1246911_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,6,10,11
echo 1 2,4,6,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_12461011_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,7,8,9
echo 1 2,4,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_124789_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,7,8,10
echo 1 2,4,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1247810_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,7,8,11
echo 1 2,4,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1247811_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,7,9,10
echo 1 2,4,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1247910_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,7,9,11
echo 1 2,4,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1247911_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,7,10,11
echo 1 2,4,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_12471011_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,8,9,10
echo 1 2,4,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1248910_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,8,9,11
echo 1 2,4,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1248911_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,8,10,11
echo 1 2,4,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_12481011_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,4,9,10,11
echo 1 2,4,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_12491011_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,5,6,7,8
echo 1 2,5,6,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_125678_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,5,6,7,9
echo 1 2,5,6,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_125679_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,5,6,7,10
echo 1 2,5,6,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1256710_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,5,6,7,11
echo 1 2,5,6,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1256711_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,5,6,8,9
echo 1 2,5,6,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_125689_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,5,6,8,10
echo 1 2,5,6,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1256810_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,5,6,8,11
echo 1 2,5,6,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1256811_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,5,6,9,10
echo 1 2,5,6,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1256910_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,5,6,9,11
echo 1 2,5,6,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1256911_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,5,6,10,11
echo 1 2,5,6,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_12561011_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,5,7,8,9
echo 1 2,5,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_125789_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,5,7,8,10
echo 1 2,5,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1257810_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,5,7,8,11
echo 1 2,5,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1257811_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,5,7,9,10
echo 1 2,5,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1257910_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,5,7,9,11
echo 1 2,5,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1257911_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,5,7,10,11
echo 1 2,5,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_12571011_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,5,8,9,10
echo 1 2,5,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1258910_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,5,8,9,11
echo 1 2,5,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1258911_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,5,8,10,11
echo 1 2,5,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_12581011_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,5,9,10,11
echo 1 2,5,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_12591011_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,6,7,8,9
echo 1 2,6,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_126789_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,6,7,8,10
echo 1 2,6,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1267810_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,6,7,8,11
echo 1 2,6,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1267811_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,6,7,9,10
echo 1 2,6,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1267910_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,6,7,9,11
echo 1 2,6,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1267911_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,6,7,10,11
echo 1 2,6,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_12671011_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,6,8,9,10
echo 1 2,6,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1268910_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,6,8,9,11
echo 1 2,6,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1268911_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,6,8,10,11
echo 1 2,6,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_12681011_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,6,9,10,11
echo 1 2,6,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_12691011_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,7,8,9,10
echo 1 2,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1278910_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,7,8,9,11
echo 1 2,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1278911_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,7,8,10,11
echo 1 2,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_12781011_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,7,9,10,11
echo 1 2,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_12791011_${sn}_Sixes.csv


# DAQ0 ELINK 1 2,8,9,10,11
echo 1 2,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_12891011_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,5,6,7
echo 1 3,4,5,6,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_134567_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,5,6,8
echo 1 3,4,5,6,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_134568_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,5,6,9
echo 1 3,4,5,6,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_134569_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,5,6,10
echo 1 3,4,5,6,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1345610_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,5,6,11
echo 1 3,4,5,6,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1345611_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,5,7,8
echo 1 3,4,5,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_134578_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,5,7,9
echo 1 3,4,5,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_134579_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,5,7,10
echo 1 3,4,5,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1345710_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,5,7,11
echo 1 3,4,5,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1345711_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,5,8,9
echo 1 3,4,5,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_134589_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,5,8,10
echo 1 3,4,5,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1345810_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,5,8,11
echo 1 3,4,5,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1345811_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,5,9,10
echo 1 3,4,5,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1345910_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,5,9,11
echo 1 3,4,5,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1345911_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,5,10,11
echo 1 3,4,5,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_13451011_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,6,7,8
echo 1 3,4,6,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_134678_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,6,7,9
echo 1 3,4,6,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_134679_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,6,7,10
echo 1 3,4,6,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1346710_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,6,7,11
echo 1 3,4,6,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1346711_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,6,8,9
echo 1 3,4,6,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_134689_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,6,8,10
echo 1 3,4,6,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1346810_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,6,8,11
echo 1 3,4,6,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1346811_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,6,9,10
echo 1 3,4,6,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1346910_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,6,9,11
echo 1 3,4,6,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1346911_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,6,10,11
echo 1 3,4,6,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_13461011_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,7,8,9
echo 1 3,4,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_134789_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,7,8,10
echo 1 3,4,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1347810_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,7,8,11
echo 1 3,4,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1347811_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,7,9,10
echo 1 3,4,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1347910_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,7,9,11
echo 1 3,4,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1347911_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,7,10,11
echo 1 3,4,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_13471011_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,8,9,10
echo 1 3,4,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1348910_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,8,9,11
echo 1 3,4,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1348911_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,8,10,11
echo 1 3,4,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_13481011_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,4,9,10,11
echo 1 3,4,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_13491011_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,5,6,7,8
echo 1 3,5,6,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_135678_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,5,6,7,9
echo 1 3,5,6,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_135679_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,5,6,7,10
echo 1 3,5,6,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1356710_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,5,6,7,11
echo 1 3,5,6,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1356711_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,5,6,8,9
echo 1 3,5,6,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_135689_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,5,6,8,10
echo 1 3,5,6,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1356810_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,5,6,8,11
echo 1 3,5,6,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1356811_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,5,6,9,10
echo 1 3,5,6,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1356910_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,5,6,9,11
echo 1 3,5,6,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1356911_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,5,6,10,11
echo 1 3,5,6,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_13561011_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,5,7,8,9
echo 1 3,5,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_135789_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,5,7,8,10
echo 1 3,5,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1357810_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,5,7,8,11
echo 1 3,5,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1357811_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,5,7,9,10
echo 1 3,5,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1357910_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,5,7,9,11
echo 1 3,5,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1357911_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,5,7,10,11
echo 1 3,5,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_13571011_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,5,8,9,10
echo 1 3,5,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1358910_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,5,8,9,11
echo 1 3,5,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1358911_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,5,8,10,11
echo 1 3,5,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_13581011_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,5,9,10,11
echo 1 3,5,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_13591011_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,6,7,8,9
echo 1 3,6,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_136789_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,6,7,8,10
echo 1 3,6,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1367810_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,6,7,8,11
echo 1 3,6,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1367811_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,6,7,9,10
echo 1 3,6,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1367910_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,6,7,9,11
echo 1 3,6,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1367911_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,6,7,10,11
echo 1 3,6,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_13671011_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,6,8,9,10
echo 1 3,6,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1368910_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,6,8,9,11
echo 1 3,6,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1368911_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,6,8,10,11
echo 1 3,6,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_13681011_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,6,9,10,11
echo 1 3,6,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_13691011_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,7,8,9,10
echo 1 3,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1378910_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,7,8,9,11
echo 1 3,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1378911_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,7,8,10,11
echo 1 3,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_13781011_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,7,9,10,11
echo 1 3,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_13791011_${sn}_Sixes.csv


# DAQ0 ELINK 1 3,8,9,10,11
echo 1 3,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_13891011_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,5,6,7,8
echo 1 4,5,6,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_145678_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,5,6,7,9
echo 1 4,5,6,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_145679_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,5,6,7,10
echo 1 4,5,6,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1456710_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,5,6,7,11
echo 1 4,5,6,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1456711_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,5,6,8,9
echo 1 4,5,6,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_145689_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,5,6,8,10
echo 1 4,5,6,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1456810_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,5,6,8,11
echo 1 4,5,6,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1456811_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,5,6,9,10
echo 1 4,5,6,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1456910_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,5,6,9,11
echo 1 4,5,6,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1456911_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,5,6,10,11
echo 1 4,5,6,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_14561011_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,5,7,8,9
echo 1 4,5,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_145789_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,5,7,8,10
echo 1 4,5,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1457810_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,5,7,8,11
echo 1 4,5,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1457811_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,5,7,9,10
echo 1 4,5,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1457910_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,5,7,9,11
echo 1 4,5,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1457911_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,5,7,10,11
echo 1 4,5,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_14571011_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,5,8,9,10
echo 1 4,5,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1458910_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,5,8,9,11
echo 1 4,5,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1458911_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,5,8,10,11
echo 1 4,5,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_14581011_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,5,9,10,11
echo 1 4,5,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_14591011_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,6,7,8,9
echo 1 4,6,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_146789_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,6,7,8,10
echo 1 4,6,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1467810_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,6,7,8,11
echo 1 4,6,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1467811_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,6,7,9,10
echo 1 4,6,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1467910_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,6,7,9,11
echo 1 4,6,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1467911_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,6,7,10,11
echo 1 4,6,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_14671011_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,6,8,9,10
echo 1 4,6,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1468910_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,6,8,9,11
echo 1 4,6,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1468911_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,6,8,10,11
echo 1 4,6,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_14681011_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,6,9,10,11
echo 1 4,6,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_14691011_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,7,8,9,10
echo 1 4,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1478910_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,7,8,9,11
echo 1 4,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1478911_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,7,8,10,11
echo 1 4,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_14781011_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,7,9,10,11
echo 1 4,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_14791011_${sn}_Sixes.csv


# DAQ0 ELINK 1 4,8,9,10,11
echo 1 4,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_14891011_${sn}_Sixes.csv


# DAQ0 ELINK 1 5,6,7,8,9
echo 1 5,6,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_156789_${sn}_Sixes.csv


# DAQ0 ELINK 1 5,6,7,8,10
echo 1 5,6,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1567810_${sn}_Sixes.csv


# DAQ0 ELINK 1 5,6,7,8,11
echo 1 5,6,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1567811_${sn}_Sixes.csv


# DAQ0 ELINK 1 5,6,7,9,10
echo 1 5,6,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1567910_${sn}_Sixes.csv


# DAQ0 ELINK 1 5,6,7,9,11
echo 1 5,6,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1567911_${sn}_Sixes.csv


# DAQ0 ELINK 1 5,6,7,10,11
echo 1 5,6,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_15671011_${sn}_Sixes.csv


# DAQ0 ELINK 1 5,6,8,9,10
echo 1 5,6,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1568910_${sn}_Sixes.csv


# DAQ0 ELINK 1 5,6,8,9,11
echo 1 5,6,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1568911_${sn}_Sixes.csv


# DAQ0 ELINK 1 5,6,8,10,11
echo 1 5,6,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_15681011_${sn}_Sixes.csv


# DAQ0 ELINK 1 5,6,9,10,11
echo 1 5,6,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_15691011_${sn}_Sixes.csv


# DAQ0 ELINK 1 5,7,8,9,10
echo 1 5,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1578910_${sn}_Sixes.csv


# DAQ0 ELINK 1 5,7,8,9,11
echo 1 5,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1578911_${sn}_Sixes.csv


# DAQ0 ELINK 1 5,7,8,10,11
echo 1 5,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_15781011_${sn}_Sixes.csv


# DAQ0 ELINK 1 5,7,9,10,11
echo 1 5,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_15791011_${sn}_Sixes.csv


# DAQ0 ELINK 1 5,8,9,10,11
echo 1 5,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_15891011_${sn}_Sixes.csv


# DAQ0 ELINK 1 6,7,8,9,10
echo 1 6,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1678910_${sn}_Sixes.csv


# DAQ0 ELINK 1 6,7,8,9,11
echo 1 6,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_1678911_${sn}_Sixes.csv


# DAQ0 ELINK 1 6,7,8,10,11
echo 1 6,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_16781011_${sn}_Sixes.csv


# DAQ0 ELINK 1 6,7,9,10,11
echo 1 6,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_16791011_${sn}_Sixes.csv


# DAQ0 ELINK 1 6,8,9,10,11
echo 1 6,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_16891011_${sn}_Sixes.csv


# DAQ0 ELINK 1 7,8,9,10,11
echo 1 7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_17891011_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,5,6,7
echo 2 3,4,5,6,7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_234567_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,5,6,8
echo 2 3,4,5,6,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_234568_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,5,6,9
echo 2 3,4,5,6,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_234569_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,5,6,10
echo 2 3,4,5,6,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2345610_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,5,6,11
echo 2 3,4,5,6,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2345611_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,5,7,8
echo 2 3,4,5,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_234578_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,5,7,9
echo 2 3,4,5,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_234579_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,5,7,10
echo 2 3,4,5,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2345710_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,5,7,11
echo 2 3,4,5,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2345711_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,5,8,9
echo 2 3,4,5,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_234589_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,5,8,10
echo 2 3,4,5,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2345810_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,5,8,11
echo 2 3,4,5,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2345811_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,5,9,10
echo 2 3,4,5,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2345910_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,5,9,11
echo 2 3,4,5,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2345911_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,5,10,11
echo 2 3,4,5,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_23451011_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,6,7,8
echo 2 3,4,6,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_234678_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,6,7,9
echo 2 3,4,6,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_234679_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,6,7,10
echo 2 3,4,6,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2346710_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,6,7,11
echo 2 3,4,6,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2346711_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,6,8,9
echo 2 3,4,6,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_234689_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,6,8,10
echo 2 3,4,6,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2346810_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,6,8,11
echo 2 3,4,6,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2346811_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,6,9,10
echo 2 3,4,6,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2346910_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,6,9,11
echo 2 3,4,6,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2346911_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,6,10,11
echo 2 3,4,6,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_23461011_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,7,8,9
echo 2 3,4,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_234789_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,7,8,10
echo 2 3,4,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2347810_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,7,8,11
echo 2 3,4,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2347811_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,7,9,10
echo 2 3,4,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2347910_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,7,9,11
echo 2 3,4,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2347911_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,7,10,11
echo 2 3,4,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_23471011_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,8,9,10
echo 2 3,4,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2348910_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,8,9,11
echo 2 3,4,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2348911_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,8,10,11
echo 2 3,4,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_23481011_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,4,9,10,11
echo 2 3,4,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_23491011_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,5,6,7,8
echo 2 3,5,6,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_235678_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,5,6,7,9
echo 2 3,5,6,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_235679_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,5,6,7,10
echo 2 3,5,6,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2356710_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,5,6,7,11
echo 2 3,5,6,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2356711_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,5,6,8,9
echo 2 3,5,6,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_235689_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,5,6,8,10
echo 2 3,5,6,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2356810_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,5,6,8,11
echo 2 3,5,6,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2356811_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,5,6,9,10
echo 2 3,5,6,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2356910_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,5,6,9,11
echo 2 3,5,6,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2356911_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,5,6,10,11
echo 2 3,5,6,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_23561011_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,5,7,8,9
echo 2 3,5,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_235789_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,5,7,8,10
echo 2 3,5,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2357810_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,5,7,8,11
echo 2 3,5,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2357811_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,5,7,9,10
echo 2 3,5,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2357910_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,5,7,9,11
echo 2 3,5,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2357911_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,5,7,10,11
echo 2 3,5,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_23571011_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,5,8,9,10
echo 2 3,5,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2358910_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,5,8,9,11
echo 2 3,5,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2358911_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,5,8,10,11
echo 2 3,5,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_23581011_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,5,9,10,11
echo 2 3,5,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_23591011_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,6,7,8,9
echo 2 3,6,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_236789_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,6,7,8,10
echo 2 3,6,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2367810_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,6,7,8,11
echo 2 3,6,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2367811_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,6,7,9,10
echo 2 3,6,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2367910_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,6,7,9,11
echo 2 3,6,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2367911_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,6,7,10,11
echo 2 3,6,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_23671011_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,6,8,9,10
echo 2 3,6,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2368910_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,6,8,9,11
echo 2 3,6,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2368911_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,6,8,10,11
echo 2 3,6,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_23681011_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,6,9,10,11
echo 2 3,6,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_23691011_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,7,8,9,10
echo 2 3,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2378910_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,7,8,9,11
echo 2 3,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2378911_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,7,8,10,11
echo 2 3,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_23781011_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,7,9,10,11
echo 2 3,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_23791011_${sn}_Sixes.csv


# DAQ0 ELINK 2 3,8,9,10,11
echo 2 3,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_23891011_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,5,6,7,8
echo 2 4,5,6,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_245678_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,5,6,7,9
echo 2 4,5,6,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_245679_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,5,6,7,10
echo 2 4,5,6,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2456710_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,5,6,7,11
echo 2 4,5,6,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2456711_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,5,6,8,9
echo 2 4,5,6,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_245689_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,5,6,8,10
echo 2 4,5,6,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2456810_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,5,6,8,11
echo 2 4,5,6,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2456811_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,5,6,9,10
echo 2 4,5,6,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2456910_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,5,6,9,11
echo 2 4,5,6,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2456911_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,5,6,10,11
echo 2 4,5,6,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_24561011_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,5,7,8,9
echo 2 4,5,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_245789_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,5,7,8,10
echo 2 4,5,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2457810_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,5,7,8,11
echo 2 4,5,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2457811_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,5,7,9,10
echo 2 4,5,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2457910_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,5,7,9,11
echo 2 4,5,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2457911_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,5,7,10,11
echo 2 4,5,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_24571011_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,5,8,9,10
echo 2 4,5,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2458910_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,5,8,9,11
echo 2 4,5,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2458911_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,5,8,10,11
echo 2 4,5,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_24581011_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,5,9,10,11
echo 2 4,5,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_24591011_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,6,7,8,9
echo 2 4,6,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_246789_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,6,7,8,10
echo 2 4,6,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2467810_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,6,7,8,11
echo 2 4,6,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2467811_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,6,7,9,10
echo 2 4,6,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2467910_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,6,7,9,11
echo 2 4,6,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2467911_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,6,7,10,11
echo 2 4,6,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_24671011_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,6,8,9,10
echo 2 4,6,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2468910_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,6,8,9,11
echo 2 4,6,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2468911_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,6,8,10,11
echo 2 4,6,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_24681011_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,6,9,10,11
echo 2 4,6,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_24691011_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,7,8,9,10
echo 2 4,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2478910_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,7,8,9,11
echo 2 4,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2478911_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,7,8,10,11
echo 2 4,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_24781011_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,7,9,10,11
echo 2 4,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_24791011_${sn}_Sixes.csv


# DAQ0 ELINK 2 4,8,9,10,11
echo 2 4,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_24891011_${sn}_Sixes.csv


# DAQ0 ELINK 2 5,6,7,8,9
echo 2 5,6,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_256789_${sn}_Sixes.csv


# DAQ0 ELINK 2 5,6,7,8,10
echo 2 5,6,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2567810_${sn}_Sixes.csv


# DAQ0 ELINK 2 5,6,7,8,11
echo 2 5,6,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2567811_${sn}_Sixes.csv


# DAQ0 ELINK 2 5,6,7,9,10
echo 2 5,6,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2567910_${sn}_Sixes.csv


# DAQ0 ELINK 2 5,6,7,9,11
echo 2 5,6,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2567911_${sn}_Sixes.csv


# DAQ0 ELINK 2 5,6,7,10,11
echo 2 5,6,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_25671011_${sn}_Sixes.csv


# DAQ0 ELINK 2 5,6,8,9,10
echo 2 5,6,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2568910_${sn}_Sixes.csv


# DAQ0 ELINK 2 5,6,8,9,11
echo 2 5,6,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2568911_${sn}_Sixes.csv


# DAQ0 ELINK 2 5,6,8,10,11
echo 2 5,6,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_25681011_${sn}_Sixes.csv


# DAQ0 ELINK 2 5,6,9,10,11
echo 2 5,6,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_25691011_${sn}_Sixes.csv


# DAQ0 ELINK 2 5,7,8,9,10
echo 2 5,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2578910_${sn}_Sixes.csv


# DAQ0 ELINK 2 5,7,8,9,11
echo 2 5,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2578911_${sn}_Sixes.csv


# DAQ0 ELINK 2 5,7,8,10,11
echo 2 5,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_25781011_${sn}_Sixes.csv


# DAQ0 ELINK 2 5,7,9,10,11
echo 2 5,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_25791011_${sn}_Sixes.csv


# DAQ0 ELINK 2 5,8,9,10,11
echo 2 5,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_25891011_${sn}_Sixes.csv


# DAQ0 ELINK 2 6,7,8,9,10
echo 2 6,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2678910_${sn}_Sixes.csv


# DAQ0 ELINK 2 6,7,8,9,11
echo 2 6,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_2678911_${sn}_Sixes.csv


# DAQ0 ELINK 2 6,7,8,10,11
echo 2 6,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_26781011_${sn}_Sixes.csv


# DAQ0 ELINK 2 6,7,9,10,11
echo 2 6,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_26791011_${sn}_Sixes.csv


# DAQ0 ELINK 2 6,8,9,10,11
echo 2 6,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_26891011_${sn}_Sixes.csv


# DAQ0 ELINK 2 7,8,9,10,11
echo 2 7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_27891011_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,5,6,7,8
echo 3 4,5,6,7,8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_345678_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,5,6,7,9
echo 3 4,5,6,7,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_345679_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,5,6,7,10
echo 3 4,5,6,7,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_3456710_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,5,6,7,11
echo 3 4,5,6,7,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_3456711_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,5,6,8,9
echo 3 4,5,6,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_345689_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,5,6,8,10
echo 3 4,5,6,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_3456810_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,5,6,8,11
echo 3 4,5,6,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_3456811_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,5,6,9,10
echo 3 4,5,6,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_3456910_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,5,6,9,11
echo 3 4,5,6,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_3456911_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,5,6,10,11
echo 3 4,5,6,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_34561011_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,5,7,8,9
echo 3 4,5,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_345789_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,5,7,8,10
echo 3 4,5,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_3457810_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,5,7,8,11
echo 3 4,5,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_3457811_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,5,7,9,10
echo 3 4,5,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_3457910_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,5,7,9,11
echo 3 4,5,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_3457911_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,5,7,10,11
echo 3 4,5,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_34571011_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,5,8,9,10
echo 3 4,5,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_3458910_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,5,8,9,11
echo 3 4,5,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_3458911_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,5,8,10,11
echo 3 4,5,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_34581011_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,5,9,10,11
echo 3 4,5,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_34591011_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,6,7,8,9
echo 3 4,6,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_346789_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,6,7,8,10
echo 3 4,6,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_3467810_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,6,7,8,11
echo 3 4,6,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_3467811_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,6,7,9,10
echo 3 4,6,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_3467910_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,6,7,9,11
echo 3 4,6,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_3467911_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,6,7,10,11
echo 3 4,6,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_34671011_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,6,8,9,10
echo 3 4,6,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_3468910_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,6,8,9,11
echo 3 4,6,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_3468911_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,6,8,10,11
echo 3 4,6,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_34681011_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,6,9,10,11
echo 3 4,6,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_34691011_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,7,8,9,10
echo 3 4,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_3478910_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,7,8,9,11
echo 3 4,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_3478911_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,7,8,10,11
echo 3 4,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_34781011_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,7,9,10,11
echo 3 4,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_34791011_${sn}_Sixes.csv


# DAQ0 ELINK 3 4,8,9,10,11
echo 3 4,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_34891011_${sn}_Sixes.csv


# DAQ0 ELINK 3 5,6,7,8,9
echo 3 5,6,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_356789_${sn}_Sixes.csv


# DAQ0 ELINK 3 5,6,7,8,10
echo 3 5,6,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_3567810_${sn}_Sixes.csv


# DAQ0 ELINK 3 5,6,7,8,11
echo 3 5,6,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_3567811_${sn}_Sixes.csv


# DAQ0 ELINK 3 5,6,7,9,10
echo 3 5,6,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_3567910_${sn}_Sixes.csv


# DAQ0 ELINK 3 5,6,7,9,11
echo 3 5,6,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_3567911_${sn}_Sixes.csv


# DAQ0 ELINK 3 5,6,7,10,11
echo 3 5,6,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_35671011_${sn}_Sixes.csv


# DAQ0 ELINK 3 5,6,8,9,10
echo 3 5,6,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_3568910_${sn}_Sixes.csv


# DAQ0 ELINK 3 5,6,8,9,11
echo 3 5,6,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_3568911_${sn}_Sixes.csv


# DAQ0 ELINK 3 5,6,8,10,11
echo 3 5,6,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_35681011_${sn}_Sixes.csv


# DAQ0 ELINK 3 5,6,9,10,11
echo 3 5,6,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_35691011_${sn}_Sixes.csv


# DAQ0 ELINK 3 5,7,8,9,10
echo 3 5,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_3578910_${sn}_Sixes.csv


# DAQ0 ELINK 3 5,7,8,9,11
echo 3 5,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_3578911_${sn}_Sixes.csv


# DAQ0 ELINK 3 5,7,8,10,11
echo 3 5,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_35781011_${sn}_Sixes.csv


# DAQ0 ELINK 3 5,7,9,10,11
echo 3 5,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_35791011_${sn}_Sixes.csv


# DAQ0 ELINK 3 5,8,9,10,11
echo 3 5,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_35891011_${sn}_Sixes.csv


# DAQ0 ELINK 3 6,7,8,9,10
echo 3 6,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_3678910_${sn}_Sixes.csv


# DAQ0 ELINK 3 6,7,8,9,11
echo 3 6,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_3678911_${sn}_Sixes.csv


# DAQ0 ELINK 3 6,7,8,10,11
echo 3 6,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_36781011_${sn}_Sixes.csv


# DAQ0 ELINK 3 6,7,9,10,11
echo 3 6,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_36791011_${sn}_Sixes.csv


# DAQ0 ELINK 3 6,8,9,10,11
echo 3 6,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_36891011_${sn}_Sixes.csv


# DAQ0 ELINK 3 7,8,9,10,11
echo 3 7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_37891011_${sn}_Sixes.csv


# DAQ0 ELINK 4 5,6,7,8,9
echo 4 5,6,7,8,9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_456789_${sn}_Sixes.csv


# DAQ0 ELINK 4 5,6,7,8,10
echo 4 5,6,7,8,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_4567810_${sn}_Sixes.csv


# DAQ0 ELINK 4 5,6,7,8,11
echo 4 5,6,7,8,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_4567811_${sn}_Sixes.csv


# DAQ0 ELINK 4 5,6,7,9,10
echo 4 5,6,7,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_4567910_${sn}_Sixes.csv


# DAQ0 ELINK 4 5,6,7,9,11
echo 4 5,6,7,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_4567911_${sn}_Sixes.csv


# DAQ0 ELINK 4 5,6,7,10,11
echo 4 5,6,7,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_45671011_${sn}_Sixes.csv


# DAQ0 ELINK 4 5,6,8,9,10
echo 4 5,6,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_4568910_${sn}_Sixes.csv


# DAQ0 ELINK 4 5,6,8,9,11
echo 4 5,6,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_4568911_${sn}_Sixes.csv


# DAQ0 ELINK 4 5,6,8,10,11
echo 4 5,6,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_45681011_${sn}_Sixes.csv


# DAQ0 ELINK 4 5,6,9,10,11
echo 4 5,6,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_45691011_${sn}_Sixes.csv


# DAQ0 ELINK 4 5,7,8,9,10
echo 4 5,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_4578910_${sn}_Sixes.csv


# DAQ0 ELINK 4 5,7,8,9,11
echo 4 5,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_4578911_${sn}_Sixes.csv


# DAQ0 ELINK 4 5,7,8,10,11
echo 4 5,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_45781011_${sn}_Sixes.csv


# DAQ0 ELINK 4 5,7,9,10,11
echo 4 5,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_45791011_${sn}_Sixes.csv


# DAQ0 ELINK 4 5,8,9,10,11
echo 4 5,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_45891011_${sn}_Sixes.csv


# DAQ0 ELINK 4 6,7,8,9,10
echo 4 6,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_4678910_${sn}_Sixes.csv


# DAQ0 ELINK 4 6,7,8,9,11
echo 4 6,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_4678911_${sn}_Sixes.csv


# DAQ0 ELINK 4 6,7,8,10,11
echo 4 6,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_46781011_${sn}_Sixes.csv


# DAQ0 ELINK 4 6,7,9,10,11
echo 4 6,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_46791011_${sn}_Sixes.csv


# DAQ0 ELINK 4 6,8,9,10,11
echo 4 6,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_46891011_${sn}_Sixes.csv


# DAQ0 ELINK 4 7,8,9,10,11
echo 4 7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_47891011_${sn}_Sixes.csv


# DAQ0 ELINK 5 6,7,8,9,10
echo 5 6,7,8,9,10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_5678910_${sn}_Sixes.csv


# DAQ0 ELINK 5 6,7,8,9,11
echo 5 6,7,8,9,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_5678911_${sn}_Sixes.csv


# DAQ0 ELINK 5 6,7,8,10,11
echo 5 6,7,8,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_56781011_${sn}_Sixes.csv


# DAQ0 ELINK 5 6,7,9,10,11
echo 5 6,7,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_56791011_${sn}_Sixes.csv


# DAQ0 ELINK 5 6,8,9,10,11
echo 5 6,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_56891011_${sn}_Sixes.csv


# DAQ0 ELINK 5 7,8,9,10,11
echo 5 7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_57891011_${sn}_Sixes.csv


# DAQ0 ELINK 6 7,8,9,10,11
echo 6 7,8,9,10,11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 2 
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

./wagoneer.py --scan > DAQScans/0/Sixes/DAQ0_67891011_${sn}_Sixes.csv




