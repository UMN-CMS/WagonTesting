#!/bin/bash

sn=${1}

./wagoneer.py --tx 0 --mode 7
./wagoneer.py --tx 1 --mode 7
./wagoneer.py --tx 2 --mode 7
./wagoneer.py --tx 3 --mode 7
./wagoneer.py --tx 4 --mode 7

./wagoneer.py --tx 1 --mode 1


# DAQ1 ELINK 0 1,2,3,4,5
echo 0 1,2,3,4,5 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012345_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,3,4,6
echo 0 1,2,3,4,6 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012346_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,3,4,7
echo 0 1,2,3,4,7 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012347_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,3,4,8
echo 0 1,2,3,4,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012348_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,3,4,9
echo 0 1,2,3,4,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012349_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,3,4,10
echo 0 1,2,3,4,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0123410_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,3,4,11
echo 0 1,2,3,4,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0123411_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,3,5,6
echo 0 1,2,3,5,6 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012356_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,3,5,7
echo 0 1,2,3,5,7 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012357_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,3,5,8
echo 0 1,2,3,5,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012358_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,3,5,9
echo 0 1,2,3,5,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012359_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,3,5,10
echo 0 1,2,3,5,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0123510_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,3,5,11
echo 0 1,2,3,5,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0123511_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,3,6,7
echo 0 1,2,3,6,7 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012367_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,3,6,8
echo 0 1,2,3,6,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012368_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,3,6,9
echo 0 1,2,3,6,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012369_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,3,6,10
echo 0 1,2,3,6,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0123610_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,3,6,11
echo 0 1,2,3,6,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0123611_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,3,7,8
echo 0 1,2,3,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012378_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,3,7,9
echo 0 1,2,3,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012379_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,3,7,10
echo 0 1,2,3,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0123710_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,3,7,11
echo 0 1,2,3,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0123711_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,3,8,9
echo 0 1,2,3,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012389_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,3,8,10
echo 0 1,2,3,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0123810_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,3,8,11
echo 0 1,2,3,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0123811_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,3,9,10
echo 0 1,2,3,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0123910_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,3,9,11
echo 0 1,2,3,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0123911_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,3,10,11
echo 0 1,2,3,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_01231011_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,4,5,6
echo 0 1,2,4,5,6 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012456_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,4,5,7
echo 0 1,2,4,5,7 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012457_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,4,5,8
echo 0 1,2,4,5,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012458_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,4,5,9
echo 0 1,2,4,5,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012459_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,4,5,10
echo 0 1,2,4,5,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0124510_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,4,5,11
echo 0 1,2,4,5,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0124511_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,4,6,7
echo 0 1,2,4,6,7 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012467_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,4,6,8
echo 0 1,2,4,6,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012468_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,4,6,9
echo 0 1,2,4,6,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012469_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,4,6,10
echo 0 1,2,4,6,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0124610_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,4,6,11
echo 0 1,2,4,6,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0124611_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,4,7,8
echo 0 1,2,4,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012478_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,4,7,9
echo 0 1,2,4,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012479_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,4,7,10
echo 0 1,2,4,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0124710_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,4,7,11
echo 0 1,2,4,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0124711_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,4,8,9
echo 0 1,2,4,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012489_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,4,8,10
echo 0 1,2,4,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0124810_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,4,8,11
echo 0 1,2,4,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0124811_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,4,9,10
echo 0 1,2,4,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0124910_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,4,9,11
echo 0 1,2,4,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0124911_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,4,10,11
echo 0 1,2,4,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_01241011_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,5,6,7
echo 0 1,2,5,6,7 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012567_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,5,6,8
echo 0 1,2,5,6,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012568_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,5,6,9
echo 0 1,2,5,6,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012569_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,5,6,10
echo 0 1,2,5,6,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0125610_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,5,6,11
echo 0 1,2,5,6,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0125611_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,5,7,8
echo 0 1,2,5,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012578_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,5,7,9
echo 0 1,2,5,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012579_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,5,7,10
echo 0 1,2,5,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0125710_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,5,7,11
echo 0 1,2,5,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0125711_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,5,8,9
echo 0 1,2,5,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012589_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,5,8,10
echo 0 1,2,5,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0125810_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,5,8,11
echo 0 1,2,5,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0125811_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,5,9,10
echo 0 1,2,5,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0125910_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,5,9,11
echo 0 1,2,5,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0125911_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,5,10,11
echo 0 1,2,5,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_01251011_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,6,7,8
echo 0 1,2,6,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012678_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,6,7,9
echo 0 1,2,6,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012679_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,6,7,10
echo 0 1,2,6,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0126710_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,6,7,11
echo 0 1,2,6,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0126711_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,6,8,9
echo 0 1,2,6,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012689_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,6,8,10
echo 0 1,2,6,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0126810_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,6,8,11
echo 0 1,2,6,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0126811_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,6,9,10
echo 0 1,2,6,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0126910_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,6,9,11
echo 0 1,2,6,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0126911_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,6,10,11
echo 0 1,2,6,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_01261011_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,7,8,9
echo 0 1,2,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_012789_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,7,8,10
echo 0 1,2,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0127810_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,7,8,11
echo 0 1,2,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0127811_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,7,9,10
echo 0 1,2,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0127910_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,7,9,11
echo 0 1,2,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0127911_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,7,10,11
echo 0 1,2,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_01271011_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,8,9,10
echo 0 1,2,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0128910_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,8,9,11
echo 0 1,2,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0128911_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,8,10,11
echo 0 1,2,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_01281011_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,2,9,10,11
echo 0 1,2,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_01291011_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,4,5,6
echo 0 1,3,4,5,6 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_013456_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,4,5,7
echo 0 1,3,4,5,7 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_013457_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,4,5,8
echo 0 1,3,4,5,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_013458_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,4,5,9
echo 0 1,3,4,5,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_013459_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,4,5,10
echo 0 1,3,4,5,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0134510_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,4,5,11
echo 0 1,3,4,5,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0134511_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,4,6,7
echo 0 1,3,4,6,7 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_013467_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,4,6,8
echo 0 1,3,4,6,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_013468_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,4,6,9
echo 0 1,3,4,6,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_013469_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,4,6,10
echo 0 1,3,4,6,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0134610_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,4,6,11
echo 0 1,3,4,6,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0134611_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,4,7,8
echo 0 1,3,4,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_013478_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,4,7,9
echo 0 1,3,4,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_013479_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,4,7,10
echo 0 1,3,4,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0134710_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,4,7,11
echo 0 1,3,4,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0134711_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,4,8,9
echo 0 1,3,4,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_013489_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,4,8,10
echo 0 1,3,4,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0134810_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,4,8,11
echo 0 1,3,4,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0134811_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,4,9,10
echo 0 1,3,4,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0134910_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,4,9,11
echo 0 1,3,4,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0134911_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,4,10,11
echo 0 1,3,4,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_01341011_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,5,6,7
echo 0 1,3,5,6,7 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_013567_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,5,6,8
echo 0 1,3,5,6,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_013568_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,5,6,9
echo 0 1,3,5,6,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_013569_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,5,6,10
echo 0 1,3,5,6,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0135610_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,5,6,11
echo 0 1,3,5,6,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0135611_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,5,7,8
echo 0 1,3,5,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_013578_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,5,7,9
echo 0 1,3,5,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_013579_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,5,7,10
echo 0 1,3,5,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0135710_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,5,7,11
echo 0 1,3,5,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0135711_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,5,8,9
echo 0 1,3,5,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_013589_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,5,8,10
echo 0 1,3,5,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0135810_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,5,8,11
echo 0 1,3,5,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0135811_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,5,9,10
echo 0 1,3,5,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0135910_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,5,9,11
echo 0 1,3,5,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0135911_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,5,10,11
echo 0 1,3,5,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_01351011_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,6,7,8
echo 0 1,3,6,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_013678_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,6,7,9
echo 0 1,3,6,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_013679_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,6,7,10
echo 0 1,3,6,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0136710_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,6,7,11
echo 0 1,3,6,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0136711_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,6,8,9
echo 0 1,3,6,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_013689_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,6,8,10
echo 0 1,3,6,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0136810_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,6,8,11
echo 0 1,3,6,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0136811_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,6,9,10
echo 0 1,3,6,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0136910_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,6,9,11
echo 0 1,3,6,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0136911_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,6,10,11
echo 0 1,3,6,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_01361011_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,7,8,9
echo 0 1,3,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_013789_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,7,8,10
echo 0 1,3,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0137810_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,7,8,11
echo 0 1,3,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0137811_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,7,9,10
echo 0 1,3,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0137910_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,7,9,11
echo 0 1,3,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0137911_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,7,10,11
echo 0 1,3,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_01371011_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,8,9,10
echo 0 1,3,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0138910_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,8,9,11
echo 0 1,3,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0138911_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,8,10,11
echo 0 1,3,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_01381011_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,3,9,10,11
echo 0 1,3,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_01391011_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,5,6,7
echo 0 1,4,5,6,7 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_014567_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,5,6,8
echo 0 1,4,5,6,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_014568_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,5,6,9
echo 0 1,4,5,6,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_014569_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,5,6,10
echo 0 1,4,5,6,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0145610_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,5,6,11
echo 0 1,4,5,6,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0145611_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,5,7,8
echo 0 1,4,5,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_014578_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,5,7,9
echo 0 1,4,5,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_014579_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,5,7,10
echo 0 1,4,5,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0145710_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,5,7,11
echo 0 1,4,5,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0145711_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,5,8,9
echo 0 1,4,5,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_014589_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,5,8,10
echo 0 1,4,5,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0145810_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,5,8,11
echo 0 1,4,5,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0145811_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,5,9,10
echo 0 1,4,5,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0145910_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,5,9,11
echo 0 1,4,5,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0145911_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,5,10,11
echo 0 1,4,5,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_01451011_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,6,7,8
echo 0 1,4,6,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_014678_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,6,7,9
echo 0 1,4,6,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_014679_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,6,7,10
echo 0 1,4,6,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0146710_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,6,7,11
echo 0 1,4,6,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0146711_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,6,8,9
echo 0 1,4,6,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_014689_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,6,8,10
echo 0 1,4,6,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0146810_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,6,8,11
echo 0 1,4,6,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0146811_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,6,9,10
echo 0 1,4,6,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0146910_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,6,9,11
echo 0 1,4,6,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0146911_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,6,10,11
echo 0 1,4,6,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_01461011_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,7,8,9
echo 0 1,4,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_014789_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,7,8,10
echo 0 1,4,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0147810_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,7,8,11
echo 0 1,4,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0147811_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,7,9,10
echo 0 1,4,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0147910_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,7,9,11
echo 0 1,4,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0147911_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,7,10,11
echo 0 1,4,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_01471011_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,8,9,10
echo 0 1,4,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0148910_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,8,9,11
echo 0 1,4,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0148911_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,8,10,11
echo 0 1,4,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_01481011_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,4,9,10,11
echo 0 1,4,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_01491011_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,5,6,7,8
echo 0 1,5,6,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_015678_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,5,6,7,9
echo 0 1,5,6,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_015679_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,5,6,7,10
echo 0 1,5,6,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0156710_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,5,6,7,11
echo 0 1,5,6,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0156711_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,5,6,8,9
echo 0 1,5,6,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_015689_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,5,6,8,10
echo 0 1,5,6,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0156810_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,5,6,8,11
echo 0 1,5,6,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0156811_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,5,6,9,10
echo 0 1,5,6,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0156910_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,5,6,9,11
echo 0 1,5,6,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0156911_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,5,6,10,11
echo 0 1,5,6,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_01561011_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,5,7,8,9
echo 0 1,5,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_015789_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,5,7,8,10
echo 0 1,5,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0157810_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,5,7,8,11
echo 0 1,5,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0157811_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,5,7,9,10
echo 0 1,5,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0157910_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,5,7,9,11
echo 0 1,5,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0157911_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,5,7,10,11
echo 0 1,5,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_01571011_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,5,8,9,10
echo 0 1,5,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0158910_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,5,8,9,11
echo 0 1,5,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0158911_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,5,8,10,11
echo 0 1,5,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_01581011_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,5,9,10,11
echo 0 1,5,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_01591011_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,6,7,8,9
echo 0 1,6,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_016789_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,6,7,8,10
echo 0 1,6,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0167810_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,6,7,8,11
echo 0 1,6,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0167811_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,6,7,9,10
echo 0 1,6,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0167910_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,6,7,9,11
echo 0 1,6,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0167911_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,6,7,10,11
echo 0 1,6,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_01671011_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,6,8,9,10
echo 0 1,6,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0168910_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,6,8,9,11
echo 0 1,6,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0168911_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,6,8,10,11
echo 0 1,6,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_01681011_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,6,9,10,11
echo 0 1,6,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_01691011_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,7,8,9,10
echo 0 1,7,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0178910_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,7,8,9,11
echo 0 1,7,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0178911_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,7,8,10,11
echo 0 1,7,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_01781011_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,7,9,10,11
echo 0 1,7,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_01791011_${sn}_Sixes.csv


# DAQ1 ELINK 0 1,8,9,10,11
echo 0 1,8,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_01891011_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,4,5,6
echo 0 2,3,4,5,6 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_023456_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,4,5,7
echo 0 2,3,4,5,7 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_023457_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,4,5,8
echo 0 2,3,4,5,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_023458_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,4,5,9
echo 0 2,3,4,5,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_023459_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,4,5,10
echo 0 2,3,4,5,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0234510_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,4,5,11
echo 0 2,3,4,5,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0234511_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,4,6,7
echo 0 2,3,4,6,7 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_023467_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,4,6,8
echo 0 2,3,4,6,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_023468_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,4,6,9
echo 0 2,3,4,6,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_023469_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,4,6,10
echo 0 2,3,4,6,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0234610_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,4,6,11
echo 0 2,3,4,6,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0234611_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,4,7,8
echo 0 2,3,4,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_023478_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,4,7,9
echo 0 2,3,4,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_023479_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,4,7,10
echo 0 2,3,4,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0234710_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,4,7,11
echo 0 2,3,4,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0234711_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,4,8,9
echo 0 2,3,4,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_023489_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,4,8,10
echo 0 2,3,4,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0234810_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,4,8,11
echo 0 2,3,4,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0234811_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,4,9,10
echo 0 2,3,4,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0234910_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,4,9,11
echo 0 2,3,4,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0234911_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,4,10,11
echo 0 2,3,4,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_02341011_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,5,6,7
echo 0 2,3,5,6,7 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_023567_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,5,6,8
echo 0 2,3,5,6,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_023568_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,5,6,9
echo 0 2,3,5,6,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_023569_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,5,6,10
echo 0 2,3,5,6,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0235610_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,5,6,11
echo 0 2,3,5,6,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0235611_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,5,7,8
echo 0 2,3,5,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_023578_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,5,7,9
echo 0 2,3,5,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_023579_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,5,7,10
echo 0 2,3,5,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0235710_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,5,7,11
echo 0 2,3,5,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0235711_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,5,8,9
echo 0 2,3,5,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_023589_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,5,8,10
echo 0 2,3,5,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0235810_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,5,8,11
echo 0 2,3,5,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0235811_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,5,9,10
echo 0 2,3,5,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0235910_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,5,9,11
echo 0 2,3,5,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0235911_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,5,10,11
echo 0 2,3,5,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_02351011_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,6,7,8
echo 0 2,3,6,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_023678_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,6,7,9
echo 0 2,3,6,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_023679_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,6,7,10
echo 0 2,3,6,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0236710_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,6,7,11
echo 0 2,3,6,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0236711_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,6,8,9
echo 0 2,3,6,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_023689_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,6,8,10
echo 0 2,3,6,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0236810_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,6,8,11
echo 0 2,3,6,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0236811_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,6,9,10
echo 0 2,3,6,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0236910_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,6,9,11
echo 0 2,3,6,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0236911_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,6,10,11
echo 0 2,3,6,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_02361011_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,7,8,9
echo 0 2,3,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_023789_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,7,8,10
echo 0 2,3,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0237810_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,7,8,11
echo 0 2,3,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0237811_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,7,9,10
echo 0 2,3,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0237910_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,7,9,11
echo 0 2,3,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0237911_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,7,10,11
echo 0 2,3,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_02371011_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,8,9,10
echo 0 2,3,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0238910_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,8,9,11
echo 0 2,3,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0238911_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,8,10,11
echo 0 2,3,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_02381011_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,3,9,10,11
echo 0 2,3,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_02391011_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,5,6,7
echo 0 2,4,5,6,7 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_024567_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,5,6,8
echo 0 2,4,5,6,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_024568_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,5,6,9
echo 0 2,4,5,6,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_024569_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,5,6,10
echo 0 2,4,5,6,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0245610_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,5,6,11
echo 0 2,4,5,6,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0245611_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,5,7,8
echo 0 2,4,5,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_024578_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,5,7,9
echo 0 2,4,5,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_024579_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,5,7,10
echo 0 2,4,5,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0245710_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,5,7,11
echo 0 2,4,5,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0245711_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,5,8,9
echo 0 2,4,5,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_024589_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,5,8,10
echo 0 2,4,5,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0245810_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,5,8,11
echo 0 2,4,5,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0245811_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,5,9,10
echo 0 2,4,5,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0245910_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,5,9,11
echo 0 2,4,5,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0245911_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,5,10,11
echo 0 2,4,5,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_02451011_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,6,7,8
echo 0 2,4,6,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_024678_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,6,7,9
echo 0 2,4,6,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_024679_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,6,7,10
echo 0 2,4,6,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0246710_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,6,7,11
echo 0 2,4,6,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0246711_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,6,8,9
echo 0 2,4,6,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_024689_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,6,8,10
echo 0 2,4,6,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0246810_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,6,8,11
echo 0 2,4,6,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0246811_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,6,9,10
echo 0 2,4,6,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0246910_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,6,9,11
echo 0 2,4,6,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0246911_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,6,10,11
echo 0 2,4,6,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_02461011_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,7,8,9
echo 0 2,4,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_024789_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,7,8,10
echo 0 2,4,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0247810_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,7,8,11
echo 0 2,4,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0247811_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,7,9,10
echo 0 2,4,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0247910_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,7,9,11
echo 0 2,4,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0247911_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,7,10,11
echo 0 2,4,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_02471011_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,8,9,10
echo 0 2,4,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0248910_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,8,9,11
echo 0 2,4,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0248911_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,8,10,11
echo 0 2,4,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_02481011_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,4,9,10,11
echo 0 2,4,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_02491011_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,5,6,7,8
echo 0 2,5,6,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_025678_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,5,6,7,9
echo 0 2,5,6,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_025679_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,5,6,7,10
echo 0 2,5,6,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0256710_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,5,6,7,11
echo 0 2,5,6,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0256711_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,5,6,8,9
echo 0 2,5,6,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_025689_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,5,6,8,10
echo 0 2,5,6,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0256810_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,5,6,8,11
echo 0 2,5,6,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0256811_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,5,6,9,10
echo 0 2,5,6,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0256910_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,5,6,9,11
echo 0 2,5,6,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0256911_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,5,6,10,11
echo 0 2,5,6,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_02561011_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,5,7,8,9
echo 0 2,5,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_025789_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,5,7,8,10
echo 0 2,5,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0257810_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,5,7,8,11
echo 0 2,5,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0257811_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,5,7,9,10
echo 0 2,5,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0257910_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,5,7,9,11
echo 0 2,5,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0257911_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,5,7,10,11
echo 0 2,5,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_02571011_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,5,8,9,10
echo 0 2,5,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0258910_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,5,8,9,11
echo 0 2,5,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0258911_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,5,8,10,11
echo 0 2,5,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_02581011_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,5,9,10,11
echo 0 2,5,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_02591011_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,6,7,8,9
echo 0 2,6,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_026789_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,6,7,8,10
echo 0 2,6,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0267810_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,6,7,8,11
echo 0 2,6,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0267811_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,6,7,9,10
echo 0 2,6,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0267910_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,6,7,9,11
echo 0 2,6,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0267911_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,6,7,10,11
echo 0 2,6,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_02671011_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,6,8,9,10
echo 0 2,6,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0268910_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,6,8,9,11
echo 0 2,6,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0268911_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,6,8,10,11
echo 0 2,6,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_02681011_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,6,9,10,11
echo 0 2,6,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_02691011_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,7,8,9,10
echo 0 2,7,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0278910_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,7,8,9,11
echo 0 2,7,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0278911_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,7,8,10,11
echo 0 2,7,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_02781011_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,7,9,10,11
echo 0 2,7,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_02791011_${sn}_Sixes.csv


# DAQ1 ELINK 0 2,8,9,10,11
echo 0 2,8,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_02891011_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,5,6,7
echo 0 3,4,5,6,7 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_034567_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,5,6,8
echo 0 3,4,5,6,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_034568_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,5,6,9
echo 0 3,4,5,6,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_034569_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,5,6,10
echo 0 3,4,5,6,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0345610_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,5,6,11
echo 0 3,4,5,6,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0345611_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,5,7,8
echo 0 3,4,5,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_034578_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,5,7,9
echo 0 3,4,5,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_034579_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,5,7,10
echo 0 3,4,5,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0345710_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,5,7,11
echo 0 3,4,5,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0345711_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,5,8,9
echo 0 3,4,5,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_034589_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,5,8,10
echo 0 3,4,5,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0345810_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,5,8,11
echo 0 3,4,5,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0345811_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,5,9,10
echo 0 3,4,5,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0345910_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,5,9,11
echo 0 3,4,5,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0345911_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,5,10,11
echo 0 3,4,5,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_03451011_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,6,7,8
echo 0 3,4,6,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_034678_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,6,7,9
echo 0 3,4,6,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_034679_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,6,7,10
echo 0 3,4,6,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0346710_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,6,7,11
echo 0 3,4,6,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0346711_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,6,8,9
echo 0 3,4,6,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_034689_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,6,8,10
echo 0 3,4,6,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0346810_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,6,8,11
echo 0 3,4,6,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0346811_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,6,9,10
echo 0 3,4,6,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0346910_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,6,9,11
echo 0 3,4,6,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0346911_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,6,10,11
echo 0 3,4,6,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_03461011_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,7,8,9
echo 0 3,4,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_034789_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,7,8,10
echo 0 3,4,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0347810_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,7,8,11
echo 0 3,4,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0347811_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,7,9,10
echo 0 3,4,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0347910_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,7,9,11
echo 0 3,4,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0347911_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,7,10,11
echo 0 3,4,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_03471011_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,8,9,10
echo 0 3,4,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0348910_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,8,9,11
echo 0 3,4,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0348911_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,8,10,11
echo 0 3,4,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_03481011_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,4,9,10,11
echo 0 3,4,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_03491011_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,5,6,7,8
echo 0 3,5,6,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_035678_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,5,6,7,9
echo 0 3,5,6,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_035679_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,5,6,7,10
echo 0 3,5,6,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0356710_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,5,6,7,11
echo 0 3,5,6,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0356711_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,5,6,8,9
echo 0 3,5,6,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_035689_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,5,6,8,10
echo 0 3,5,6,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0356810_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,5,6,8,11
echo 0 3,5,6,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0356811_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,5,6,9,10
echo 0 3,5,6,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0356910_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,5,6,9,11
echo 0 3,5,6,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0356911_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,5,6,10,11
echo 0 3,5,6,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_03561011_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,5,7,8,9
echo 0 3,5,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_035789_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,5,7,8,10
echo 0 3,5,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0357810_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,5,7,8,11
echo 0 3,5,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0357811_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,5,7,9,10
echo 0 3,5,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0357910_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,5,7,9,11
echo 0 3,5,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0357911_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,5,7,10,11
echo 0 3,5,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_03571011_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,5,8,9,10
echo 0 3,5,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0358910_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,5,8,9,11
echo 0 3,5,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0358911_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,5,8,10,11
echo 0 3,5,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_03581011_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,5,9,10,11
echo 0 3,5,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_03591011_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,6,7,8,9
echo 0 3,6,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_036789_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,6,7,8,10
echo 0 3,6,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0367810_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,6,7,8,11
echo 0 3,6,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0367811_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,6,7,9,10
echo 0 3,6,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0367910_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,6,7,9,11
echo 0 3,6,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0367911_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,6,7,10,11
echo 0 3,6,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_03671011_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,6,8,9,10
echo 0 3,6,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0368910_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,6,8,9,11
echo 0 3,6,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0368911_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,6,8,10,11
echo 0 3,6,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_03681011_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,6,9,10,11
echo 0 3,6,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_03691011_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,7,8,9,10
echo 0 3,7,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0378910_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,7,8,9,11
echo 0 3,7,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0378911_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,7,8,10,11
echo 0 3,7,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_03781011_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,7,9,10,11
echo 0 3,7,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_03791011_${sn}_Sixes.csv


# DAQ1 ELINK 0 3,8,9,10,11
echo 0 3,8,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_03891011_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,5,6,7,8
echo 0 4,5,6,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_045678_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,5,6,7,9
echo 0 4,5,6,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_045679_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,5,6,7,10
echo 0 4,5,6,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0456710_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,5,6,7,11
echo 0 4,5,6,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0456711_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,5,6,8,9
echo 0 4,5,6,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_045689_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,5,6,8,10
echo 0 4,5,6,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0456810_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,5,6,8,11
echo 0 4,5,6,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0456811_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,5,6,9,10
echo 0 4,5,6,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0456910_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,5,6,9,11
echo 0 4,5,6,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0456911_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,5,6,10,11
echo 0 4,5,6,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_04561011_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,5,7,8,9
echo 0 4,5,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_045789_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,5,7,8,10
echo 0 4,5,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0457810_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,5,7,8,11
echo 0 4,5,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0457811_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,5,7,9,10
echo 0 4,5,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0457910_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,5,7,9,11
echo 0 4,5,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0457911_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,5,7,10,11
echo 0 4,5,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_04571011_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,5,8,9,10
echo 0 4,5,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0458910_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,5,8,9,11
echo 0 4,5,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0458911_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,5,8,10,11
echo 0 4,5,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_04581011_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,5,9,10,11
echo 0 4,5,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_04591011_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,6,7,8,9
echo 0 4,6,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_046789_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,6,7,8,10
echo 0 4,6,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0467810_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,6,7,8,11
echo 0 4,6,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0467811_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,6,7,9,10
echo 0 4,6,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0467910_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,6,7,9,11
echo 0 4,6,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0467911_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,6,7,10,11
echo 0 4,6,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_04671011_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,6,8,9,10
echo 0 4,6,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0468910_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,6,8,9,11
echo 0 4,6,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0468911_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,6,8,10,11
echo 0 4,6,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_04681011_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,6,9,10,11
echo 0 4,6,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_04691011_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,7,8,9,10
echo 0 4,7,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0478910_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,7,8,9,11
echo 0 4,7,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0478911_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,7,8,10,11
echo 0 4,7,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_04781011_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,7,9,10,11
echo 0 4,7,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_04791011_${sn}_Sixes.csv


# DAQ1 ELINK 0 4,8,9,10,11
echo 0 4,8,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_04891011_${sn}_Sixes.csv


# DAQ1 ELINK 0 5,6,7,8,9
echo 0 5,6,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_056789_${sn}_Sixes.csv


# DAQ1 ELINK 0 5,6,7,8,10
echo 0 5,6,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0567810_${sn}_Sixes.csv


# DAQ1 ELINK 0 5,6,7,8,11
echo 0 5,6,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0567811_${sn}_Sixes.csv


# DAQ1 ELINK 0 5,6,7,9,10
echo 0 5,6,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0567910_${sn}_Sixes.csv


# DAQ1 ELINK 0 5,6,7,9,11
echo 0 5,6,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0567911_${sn}_Sixes.csv


# DAQ1 ELINK 0 5,6,7,10,11
echo 0 5,6,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_05671011_${sn}_Sixes.csv


# DAQ1 ELINK 0 5,6,8,9,10
echo 0 5,6,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0568910_${sn}_Sixes.csv


# DAQ1 ELINK 0 5,6,8,9,11
echo 0 5,6,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0568911_${sn}_Sixes.csv


# DAQ1 ELINK 0 5,6,8,10,11
echo 0 5,6,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_05681011_${sn}_Sixes.csv


# DAQ1 ELINK 0 5,6,9,10,11
echo 0 5,6,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_05691011_${sn}_Sixes.csv


# DAQ1 ELINK 0 5,7,8,9,10
echo 0 5,7,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0578910_${sn}_Sixes.csv


# DAQ1 ELINK 0 5,7,8,9,11
echo 0 5,7,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0578911_${sn}_Sixes.csv


# DAQ1 ELINK 0 5,7,8,10,11
echo 0 5,7,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_05781011_${sn}_Sixes.csv


# DAQ1 ELINK 0 5,7,9,10,11
echo 0 5,7,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_05791011_${sn}_Sixes.csv


# DAQ1 ELINK 0 5,8,9,10,11
echo 0 5,8,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_05891011_${sn}_Sixes.csv


# DAQ1 ELINK 0 6,7,8,9,10
echo 0 6,7,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0678910_${sn}_Sixes.csv


# DAQ1 ELINK 0 6,7,8,9,11
echo 0 6,7,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_0678911_${sn}_Sixes.csv


# DAQ1 ELINK 0 6,7,8,10,11
echo 0 6,7,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_06781011_${sn}_Sixes.csv


# DAQ1 ELINK 0 6,7,9,10,11
echo 0 6,7,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_06791011_${sn}_Sixes.csv


# DAQ1 ELINK 0 6,8,9,10,11
echo 0 6,8,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_06891011_${sn}_Sixes.csv


# DAQ1 ELINK 0 7,8,9,10,11
echo 0 7,8,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_07891011_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,4,5,6
echo 1 2,3,4,5,6 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_123456_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,4,5,7
echo 1 2,3,4,5,7 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_123457_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,4,5,8
echo 1 2,3,4,5,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_123458_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,4,5,9
echo 1 2,3,4,5,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_123459_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,4,5,10
echo 1 2,3,4,5,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1234510_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,4,5,11
echo 1 2,3,4,5,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1234511_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,4,6,7
echo 1 2,3,4,6,7 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_123467_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,4,6,8
echo 1 2,3,4,6,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_123468_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,4,6,9
echo 1 2,3,4,6,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_123469_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,4,6,10
echo 1 2,3,4,6,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1234610_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,4,6,11
echo 1 2,3,4,6,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1234611_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,4,7,8
echo 1 2,3,4,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_123478_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,4,7,9
echo 1 2,3,4,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_123479_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,4,7,10
echo 1 2,3,4,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1234710_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,4,7,11
echo 1 2,3,4,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1234711_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,4,8,9
echo 1 2,3,4,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_123489_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,4,8,10
echo 1 2,3,4,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1234810_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,4,8,11
echo 1 2,3,4,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1234811_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,4,9,10
echo 1 2,3,4,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1234910_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,4,9,11
echo 1 2,3,4,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1234911_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,4,10,11
echo 1 2,3,4,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_12341011_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,5,6,7
echo 1 2,3,5,6,7 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_123567_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,5,6,8
echo 1 2,3,5,6,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_123568_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,5,6,9
echo 1 2,3,5,6,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_123569_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,5,6,10
echo 1 2,3,5,6,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1235610_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,5,6,11
echo 1 2,3,5,6,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1235611_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,5,7,8
echo 1 2,3,5,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_123578_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,5,7,9
echo 1 2,3,5,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_123579_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,5,7,10
echo 1 2,3,5,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1235710_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,5,7,11
echo 1 2,3,5,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1235711_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,5,8,9
echo 1 2,3,5,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_123589_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,5,8,10
echo 1 2,3,5,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1235810_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,5,8,11
echo 1 2,3,5,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1235811_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,5,9,10
echo 1 2,3,5,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1235910_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,5,9,11
echo 1 2,3,5,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1235911_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,5,10,11
echo 1 2,3,5,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_12351011_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,6,7,8
echo 1 2,3,6,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_123678_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,6,7,9
echo 1 2,3,6,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_123679_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,6,7,10
echo 1 2,3,6,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1236710_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,6,7,11
echo 1 2,3,6,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1236711_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,6,8,9
echo 1 2,3,6,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_123689_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,6,8,10
echo 1 2,3,6,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1236810_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,6,8,11
echo 1 2,3,6,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1236811_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,6,9,10
echo 1 2,3,6,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1236910_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,6,9,11
echo 1 2,3,6,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1236911_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,6,10,11
echo 1 2,3,6,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_12361011_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,7,8,9
echo 1 2,3,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_123789_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,7,8,10
echo 1 2,3,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1237810_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,7,8,11
echo 1 2,3,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1237811_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,7,9,10
echo 1 2,3,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1237910_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,7,9,11
echo 1 2,3,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1237911_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,7,10,11
echo 1 2,3,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_12371011_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,8,9,10
echo 1 2,3,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1238910_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,8,9,11
echo 1 2,3,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1238911_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,8,10,11
echo 1 2,3,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_12381011_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,3,9,10,11
echo 1 2,3,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_12391011_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,5,6,7
echo 1 2,4,5,6,7 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_124567_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,5,6,8
echo 1 2,4,5,6,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_124568_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,5,6,9
echo 1 2,4,5,6,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_124569_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,5,6,10
echo 1 2,4,5,6,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1245610_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,5,6,11
echo 1 2,4,5,6,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1245611_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,5,7,8
echo 1 2,4,5,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_124578_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,5,7,9
echo 1 2,4,5,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_124579_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,5,7,10
echo 1 2,4,5,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1245710_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,5,7,11
echo 1 2,4,5,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1245711_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,5,8,9
echo 1 2,4,5,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_124589_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,5,8,10
echo 1 2,4,5,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1245810_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,5,8,11
echo 1 2,4,5,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1245811_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,5,9,10
echo 1 2,4,5,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1245910_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,5,9,11
echo 1 2,4,5,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1245911_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,5,10,11
echo 1 2,4,5,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_12451011_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,6,7,8
echo 1 2,4,6,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_124678_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,6,7,9
echo 1 2,4,6,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_124679_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,6,7,10
echo 1 2,4,6,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1246710_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,6,7,11
echo 1 2,4,6,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1246711_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,6,8,9
echo 1 2,4,6,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_124689_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,6,8,10
echo 1 2,4,6,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1246810_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,6,8,11
echo 1 2,4,6,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1246811_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,6,9,10
echo 1 2,4,6,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1246910_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,6,9,11
echo 1 2,4,6,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1246911_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,6,10,11
echo 1 2,4,6,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_12461011_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,7,8,9
echo 1 2,4,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_124789_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,7,8,10
echo 1 2,4,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1247810_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,7,8,11
echo 1 2,4,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1247811_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,7,9,10
echo 1 2,4,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1247910_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,7,9,11
echo 1 2,4,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1247911_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,7,10,11
echo 1 2,4,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_12471011_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,8,9,10
echo 1 2,4,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1248910_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,8,9,11
echo 1 2,4,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1248911_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,8,10,11
echo 1 2,4,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_12481011_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,4,9,10,11
echo 1 2,4,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_12491011_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,5,6,7,8
echo 1 2,5,6,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_125678_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,5,6,7,9
echo 1 2,5,6,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_125679_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,5,6,7,10
echo 1 2,5,6,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1256710_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,5,6,7,11
echo 1 2,5,6,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1256711_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,5,6,8,9
echo 1 2,5,6,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_125689_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,5,6,8,10
echo 1 2,5,6,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1256810_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,5,6,8,11
echo 1 2,5,6,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1256811_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,5,6,9,10
echo 1 2,5,6,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1256910_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,5,6,9,11
echo 1 2,5,6,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1256911_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,5,6,10,11
echo 1 2,5,6,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_12561011_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,5,7,8,9
echo 1 2,5,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_125789_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,5,7,8,10
echo 1 2,5,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1257810_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,5,7,8,11
echo 1 2,5,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1257811_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,5,7,9,10
echo 1 2,5,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1257910_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,5,7,9,11
echo 1 2,5,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1257911_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,5,7,10,11
echo 1 2,5,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_12571011_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,5,8,9,10
echo 1 2,5,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1258910_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,5,8,9,11
echo 1 2,5,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1258911_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,5,8,10,11
echo 1 2,5,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_12581011_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,5,9,10,11
echo 1 2,5,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_12591011_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,6,7,8,9
echo 1 2,6,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_126789_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,6,7,8,10
echo 1 2,6,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1267810_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,6,7,8,11
echo 1 2,6,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1267811_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,6,7,9,10
echo 1 2,6,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1267910_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,6,7,9,11
echo 1 2,6,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1267911_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,6,7,10,11
echo 1 2,6,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_12671011_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,6,8,9,10
echo 1 2,6,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1268910_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,6,8,9,11
echo 1 2,6,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1268911_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,6,8,10,11
echo 1 2,6,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_12681011_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,6,9,10,11
echo 1 2,6,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_12691011_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,7,8,9,10
echo 1 2,7,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1278910_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,7,8,9,11
echo 1 2,7,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1278911_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,7,8,10,11
echo 1 2,7,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_12781011_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,7,9,10,11
echo 1 2,7,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_12791011_${sn}_Sixes.csv


# DAQ1 ELINK 1 2,8,9,10,11
echo 1 2,8,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_12891011_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,5,6,7
echo 1 3,4,5,6,7 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_134567_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,5,6,8
echo 1 3,4,5,6,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_134568_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,5,6,9
echo 1 3,4,5,6,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_134569_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,5,6,10
echo 1 3,4,5,6,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1345610_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,5,6,11
echo 1 3,4,5,6,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1345611_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,5,7,8
echo 1 3,4,5,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_134578_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,5,7,9
echo 1 3,4,5,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_134579_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,5,7,10
echo 1 3,4,5,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1345710_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,5,7,11
echo 1 3,4,5,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1345711_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,5,8,9
echo 1 3,4,5,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_134589_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,5,8,10
echo 1 3,4,5,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1345810_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,5,8,11
echo 1 3,4,5,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1345811_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,5,9,10
echo 1 3,4,5,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1345910_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,5,9,11
echo 1 3,4,5,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1345911_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,5,10,11
echo 1 3,4,5,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_13451011_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,6,7,8
echo 1 3,4,6,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_134678_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,6,7,9
echo 1 3,4,6,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_134679_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,6,7,10
echo 1 3,4,6,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1346710_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,6,7,11
echo 1 3,4,6,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1346711_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,6,8,9
echo 1 3,4,6,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_134689_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,6,8,10
echo 1 3,4,6,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1346810_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,6,8,11
echo 1 3,4,6,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1346811_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,6,9,10
echo 1 3,4,6,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1346910_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,6,9,11
echo 1 3,4,6,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1346911_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,6,10,11
echo 1 3,4,6,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_13461011_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,7,8,9
echo 1 3,4,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_134789_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,7,8,10
echo 1 3,4,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1347810_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,7,8,11
echo 1 3,4,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1347811_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,7,9,10
echo 1 3,4,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1347910_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,7,9,11
echo 1 3,4,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1347911_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,7,10,11
echo 1 3,4,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_13471011_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,8,9,10
echo 1 3,4,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1348910_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,8,9,11
echo 1 3,4,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1348911_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,8,10,11
echo 1 3,4,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_13481011_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,4,9,10,11
echo 1 3,4,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_13491011_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,5,6,7,8
echo 1 3,5,6,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_135678_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,5,6,7,9
echo 1 3,5,6,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_135679_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,5,6,7,10
echo 1 3,5,6,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1356710_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,5,6,7,11
echo 1 3,5,6,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1356711_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,5,6,8,9
echo 1 3,5,6,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_135689_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,5,6,8,10
echo 1 3,5,6,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1356810_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,5,6,8,11
echo 1 3,5,6,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1356811_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,5,6,9,10
echo 1 3,5,6,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1356910_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,5,6,9,11
echo 1 3,5,6,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1356911_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,5,6,10,11
echo 1 3,5,6,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_13561011_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,5,7,8,9
echo 1 3,5,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_135789_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,5,7,8,10
echo 1 3,5,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1357810_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,5,7,8,11
echo 1 3,5,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1357811_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,5,7,9,10
echo 1 3,5,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1357910_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,5,7,9,11
echo 1 3,5,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1357911_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,5,7,10,11
echo 1 3,5,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_13571011_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,5,8,9,10
echo 1 3,5,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1358910_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,5,8,9,11
echo 1 3,5,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1358911_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,5,8,10,11
echo 1 3,5,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_13581011_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,5,9,10,11
echo 1 3,5,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_13591011_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,6,7,8,9
echo 1 3,6,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_136789_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,6,7,8,10
echo 1 3,6,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1367810_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,6,7,8,11
echo 1 3,6,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1367811_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,6,7,9,10
echo 1 3,6,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1367910_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,6,7,9,11
echo 1 3,6,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1367911_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,6,7,10,11
echo 1 3,6,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_13671011_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,6,8,9,10
echo 1 3,6,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1368910_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,6,8,9,11
echo 1 3,6,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1368911_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,6,8,10,11
echo 1 3,6,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_13681011_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,6,9,10,11
echo 1 3,6,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_13691011_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,7,8,9,10
echo 1 3,7,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1378910_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,7,8,9,11
echo 1 3,7,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1378911_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,7,8,10,11
echo 1 3,7,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_13781011_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,7,9,10,11
echo 1 3,7,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_13791011_${sn}_Sixes.csv


# DAQ1 ELINK 1 3,8,9,10,11
echo 1 3,8,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_13891011_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,5,6,7,8
echo 1 4,5,6,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_145678_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,5,6,7,9
echo 1 4,5,6,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_145679_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,5,6,7,10
echo 1 4,5,6,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1456710_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,5,6,7,11
echo 1 4,5,6,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1456711_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,5,6,8,9
echo 1 4,5,6,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_145689_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,5,6,8,10
echo 1 4,5,6,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1456810_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,5,6,8,11
echo 1 4,5,6,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1456811_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,5,6,9,10
echo 1 4,5,6,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1456910_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,5,6,9,11
echo 1 4,5,6,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1456911_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,5,6,10,11
echo 1 4,5,6,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_14561011_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,5,7,8,9
echo 1 4,5,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_145789_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,5,7,8,10
echo 1 4,5,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1457810_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,5,7,8,11
echo 1 4,5,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1457811_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,5,7,9,10
echo 1 4,5,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1457910_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,5,7,9,11
echo 1 4,5,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1457911_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,5,7,10,11
echo 1 4,5,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_14571011_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,5,8,9,10
echo 1 4,5,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1458910_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,5,8,9,11
echo 1 4,5,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1458911_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,5,8,10,11
echo 1 4,5,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_14581011_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,5,9,10,11
echo 1 4,5,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_14591011_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,6,7,8,9
echo 1 4,6,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_146789_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,6,7,8,10
echo 1 4,6,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1467810_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,6,7,8,11
echo 1 4,6,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1467811_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,6,7,9,10
echo 1 4,6,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1467910_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,6,7,9,11
echo 1 4,6,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1467911_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,6,7,10,11
echo 1 4,6,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_14671011_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,6,8,9,10
echo 1 4,6,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1468910_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,6,8,9,11
echo 1 4,6,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1468911_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,6,8,10,11
echo 1 4,6,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_14681011_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,6,9,10,11
echo 1 4,6,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_14691011_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,7,8,9,10
echo 1 4,7,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1478910_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,7,8,9,11
echo 1 4,7,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1478911_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,7,8,10,11
echo 1 4,7,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_14781011_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,7,9,10,11
echo 1 4,7,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_14791011_${sn}_Sixes.csv


# DAQ1 ELINK 1 4,8,9,10,11
echo 1 4,8,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_14891011_${sn}_Sixes.csv


# DAQ1 ELINK 1 5,6,7,8,9
echo 1 5,6,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_156789_${sn}_Sixes.csv


# DAQ1 ELINK 1 5,6,7,8,10
echo 1 5,6,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1567810_${sn}_Sixes.csv


# DAQ1 ELINK 1 5,6,7,8,11
echo 1 5,6,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1567811_${sn}_Sixes.csv


# DAQ1 ELINK 1 5,6,7,9,10
echo 1 5,6,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1567910_${sn}_Sixes.csv


# DAQ1 ELINK 1 5,6,7,9,11
echo 1 5,6,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1567911_${sn}_Sixes.csv


# DAQ1 ELINK 1 5,6,7,10,11
echo 1 5,6,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_15671011_${sn}_Sixes.csv


# DAQ1 ELINK 1 5,6,8,9,10
echo 1 5,6,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1568910_${sn}_Sixes.csv


# DAQ1 ELINK 1 5,6,8,9,11
echo 1 5,6,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1568911_${sn}_Sixes.csv


# DAQ1 ELINK 1 5,6,8,10,11
echo 1 5,6,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_15681011_${sn}_Sixes.csv


# DAQ1 ELINK 1 5,6,9,10,11
echo 1 5,6,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_15691011_${sn}_Sixes.csv


# DAQ1 ELINK 1 5,7,8,9,10
echo 1 5,7,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1578910_${sn}_Sixes.csv


# DAQ1 ELINK 1 5,7,8,9,11
echo 1 5,7,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1578911_${sn}_Sixes.csv


# DAQ1 ELINK 1 5,7,8,10,11
echo 1 5,7,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_15781011_${sn}_Sixes.csv


# DAQ1 ELINK 1 5,7,9,10,11
echo 1 5,7,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_15791011_${sn}_Sixes.csv


# DAQ1 ELINK 1 5,8,9,10,11
echo 1 5,8,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_15891011_${sn}_Sixes.csv


# DAQ1 ELINK 1 6,7,8,9,10
echo 1 6,7,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1678910_${sn}_Sixes.csv


# DAQ1 ELINK 1 6,7,8,9,11
echo 1 6,7,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_1678911_${sn}_Sixes.csv


# DAQ1 ELINK 1 6,7,8,10,11
echo 1 6,7,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_16781011_${sn}_Sixes.csv


# DAQ1 ELINK 1 6,7,9,10,11
echo 1 6,7,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_16791011_${sn}_Sixes.csv


# DAQ1 ELINK 1 6,8,9,10,11
echo 1 6,8,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_16891011_${sn}_Sixes.csv


# DAQ1 ELINK 1 7,8,9,10,11
echo 1 7,8,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_17891011_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,5,6,7
echo 2 3,4,5,6,7 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_234567_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,5,6,8
echo 2 3,4,5,6,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_234568_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,5,6,9
echo 2 3,4,5,6,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_234569_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,5,6,10
echo 2 3,4,5,6,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2345610_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,5,6,11
echo 2 3,4,5,6,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2345611_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,5,7,8
echo 2 3,4,5,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_234578_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,5,7,9
echo 2 3,4,5,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_234579_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,5,7,10
echo 2 3,4,5,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2345710_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,5,7,11
echo 2 3,4,5,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2345711_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,5,8,9
echo 2 3,4,5,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_234589_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,5,8,10
echo 2 3,4,5,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2345810_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,5,8,11
echo 2 3,4,5,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2345811_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,5,9,10
echo 2 3,4,5,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2345910_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,5,9,11
echo 2 3,4,5,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2345911_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,5,10,11
echo 2 3,4,5,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_23451011_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,6,7,8
echo 2 3,4,6,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_234678_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,6,7,9
echo 2 3,4,6,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_234679_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,6,7,10
echo 2 3,4,6,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2346710_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,6,7,11
echo 2 3,4,6,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2346711_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,6,8,9
echo 2 3,4,6,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_234689_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,6,8,10
echo 2 3,4,6,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2346810_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,6,8,11
echo 2 3,4,6,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2346811_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,6,9,10
echo 2 3,4,6,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2346910_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,6,9,11
echo 2 3,4,6,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2346911_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,6,10,11
echo 2 3,4,6,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_23461011_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,7,8,9
echo 2 3,4,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_234789_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,7,8,10
echo 2 3,4,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2347810_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,7,8,11
echo 2 3,4,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2347811_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,7,9,10
echo 2 3,4,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2347910_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,7,9,11
echo 2 3,4,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2347911_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,7,10,11
echo 2 3,4,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_23471011_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,8,9,10
echo 2 3,4,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2348910_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,8,9,11
echo 2 3,4,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2348911_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,8,10,11
echo 2 3,4,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_23481011_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,4,9,10,11
echo 2 3,4,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_23491011_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,5,6,7,8
echo 2 3,5,6,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_235678_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,5,6,7,9
echo 2 3,5,6,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_235679_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,5,6,7,10
echo 2 3,5,6,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2356710_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,5,6,7,11
echo 2 3,5,6,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2356711_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,5,6,8,9
echo 2 3,5,6,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_235689_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,5,6,8,10
echo 2 3,5,6,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2356810_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,5,6,8,11
echo 2 3,5,6,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2356811_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,5,6,9,10
echo 2 3,5,6,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2356910_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,5,6,9,11
echo 2 3,5,6,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2356911_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,5,6,10,11
echo 2 3,5,6,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_23561011_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,5,7,8,9
echo 2 3,5,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_235789_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,5,7,8,10
echo 2 3,5,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2357810_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,5,7,8,11
echo 2 3,5,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2357811_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,5,7,9,10
echo 2 3,5,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2357910_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,5,7,9,11
echo 2 3,5,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2357911_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,5,7,10,11
echo 2 3,5,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_23571011_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,5,8,9,10
echo 2 3,5,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2358910_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,5,8,9,11
echo 2 3,5,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2358911_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,5,8,10,11
echo 2 3,5,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_23581011_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,5,9,10,11
echo 2 3,5,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_23591011_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,6,7,8,9
echo 2 3,6,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_236789_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,6,7,8,10
echo 2 3,6,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2367810_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,6,7,8,11
echo 2 3,6,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2367811_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,6,7,9,10
echo 2 3,6,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2367910_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,6,7,9,11
echo 2 3,6,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2367911_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,6,7,10,11
echo 2 3,6,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_23671011_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,6,8,9,10
echo 2 3,6,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2368910_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,6,8,9,11
echo 2 3,6,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2368911_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,6,8,10,11
echo 2 3,6,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_23681011_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,6,9,10,11
echo 2 3,6,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_23691011_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,7,8,9,10
echo 2 3,7,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2378910_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,7,8,9,11
echo 2 3,7,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2378911_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,7,8,10,11
echo 2 3,7,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_23781011_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,7,9,10,11
echo 2 3,7,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_23791011_${sn}_Sixes.csv


# DAQ1 ELINK 2 3,8,9,10,11
echo 2 3,8,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_23891011_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,5,6,7,8
echo 2 4,5,6,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_245678_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,5,6,7,9
echo 2 4,5,6,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_245679_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,5,6,7,10
echo 2 4,5,6,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2456710_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,5,6,7,11
echo 2 4,5,6,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2456711_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,5,6,8,9
echo 2 4,5,6,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_245689_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,5,6,8,10
echo 2 4,5,6,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2456810_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,5,6,8,11
echo 2 4,5,6,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2456811_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,5,6,9,10
echo 2 4,5,6,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2456910_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,5,6,9,11
echo 2 4,5,6,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2456911_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,5,6,10,11
echo 2 4,5,6,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_24561011_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,5,7,8,9
echo 2 4,5,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_245789_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,5,7,8,10
echo 2 4,5,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2457810_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,5,7,8,11
echo 2 4,5,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2457811_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,5,7,9,10
echo 2 4,5,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2457910_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,5,7,9,11
echo 2 4,5,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2457911_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,5,7,10,11
echo 2 4,5,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_24571011_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,5,8,9,10
echo 2 4,5,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2458910_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,5,8,9,11
echo 2 4,5,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2458911_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,5,8,10,11
echo 2 4,5,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_24581011_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,5,9,10,11
echo 2 4,5,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_24591011_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,6,7,8,9
echo 2 4,6,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_246789_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,6,7,8,10
echo 2 4,6,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2467810_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,6,7,8,11
echo 2 4,6,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2467811_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,6,7,9,10
echo 2 4,6,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2467910_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,6,7,9,11
echo 2 4,6,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2467911_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,6,7,10,11
echo 2 4,6,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_24671011_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,6,8,9,10
echo 2 4,6,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2468910_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,6,8,9,11
echo 2 4,6,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2468911_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,6,8,10,11
echo 2 4,6,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_24681011_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,6,9,10,11
echo 2 4,6,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_24691011_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,7,8,9,10
echo 2 4,7,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2478910_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,7,8,9,11
echo 2 4,7,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2478911_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,7,8,10,11
echo 2 4,7,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_24781011_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,7,9,10,11
echo 2 4,7,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_24791011_${sn}_Sixes.csv


# DAQ1 ELINK 2 4,8,9,10,11
echo 2 4,8,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_24891011_${sn}_Sixes.csv


# DAQ1 ELINK 2 5,6,7,8,9
echo 2 5,6,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_256789_${sn}_Sixes.csv


# DAQ1 ELINK 2 5,6,7,8,10
echo 2 5,6,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2567810_${sn}_Sixes.csv


# DAQ1 ELINK 2 5,6,7,8,11
echo 2 5,6,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2567811_${sn}_Sixes.csv


# DAQ1 ELINK 2 5,6,7,9,10
echo 2 5,6,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2567910_${sn}_Sixes.csv


# DAQ1 ELINK 2 5,6,7,9,11
echo 2 5,6,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2567911_${sn}_Sixes.csv


# DAQ1 ELINK 2 5,6,7,10,11
echo 2 5,6,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_25671011_${sn}_Sixes.csv


# DAQ1 ELINK 2 5,6,8,9,10
echo 2 5,6,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2568910_${sn}_Sixes.csv


# DAQ1 ELINK 2 5,6,8,9,11
echo 2 5,6,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2568911_${sn}_Sixes.csv


# DAQ1 ELINK 2 5,6,8,10,11
echo 2 5,6,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_25681011_${sn}_Sixes.csv


# DAQ1 ELINK 2 5,6,9,10,11
echo 2 5,6,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_25691011_${sn}_Sixes.csv


# DAQ1 ELINK 2 5,7,8,9,10
echo 2 5,7,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2578910_${sn}_Sixes.csv


# DAQ1 ELINK 2 5,7,8,9,11
echo 2 5,7,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2578911_${sn}_Sixes.csv


# DAQ1 ELINK 2 5,7,8,10,11
echo 2 5,7,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_25781011_${sn}_Sixes.csv


# DAQ1 ELINK 2 5,7,9,10,11
echo 2 5,7,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_25791011_${sn}_Sixes.csv


# DAQ1 ELINK 2 5,8,9,10,11
echo 2 5,8,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_25891011_${sn}_Sixes.csv


# DAQ1 ELINK 2 6,7,8,9,10
echo 2 6,7,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2678910_${sn}_Sixes.csv


# DAQ1 ELINK 2 6,7,8,9,11
echo 2 6,7,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_2678911_${sn}_Sixes.csv


# DAQ1 ELINK 2 6,7,8,10,11
echo 2 6,7,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_26781011_${sn}_Sixes.csv


# DAQ1 ELINK 2 6,7,9,10,11
echo 2 6,7,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_26791011_${sn}_Sixes.csv


# DAQ1 ELINK 2 6,8,9,10,11
echo 2 6,8,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_26891011_${sn}_Sixes.csv


# DAQ1 ELINK 2 7,8,9,10,11
echo 2 7,8,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_27891011_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,5,6,7,8
echo 3 4,5,6,7,8 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_345678_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,5,6,7,9
echo 3 4,5,6,7,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_345679_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,5,6,7,10
echo 3 4,5,6,7,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_3456710_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,5,6,7,11
echo 3 4,5,6,7,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_3456711_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,5,6,8,9
echo 3 4,5,6,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_345689_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,5,6,8,10
echo 3 4,5,6,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_3456810_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,5,6,8,11
echo 3 4,5,6,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_3456811_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,5,6,9,10
echo 3 4,5,6,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_3456910_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,5,6,9,11
echo 3 4,5,6,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_3456911_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,5,6,10,11
echo 3 4,5,6,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_34561011_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,5,7,8,9
echo 3 4,5,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_345789_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,5,7,8,10
echo 3 4,5,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_3457810_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,5,7,8,11
echo 3 4,5,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_3457811_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,5,7,9,10
echo 3 4,5,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_3457910_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,5,7,9,11
echo 3 4,5,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_3457911_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,5,7,10,11
echo 3 4,5,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_34571011_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,5,8,9,10
echo 3 4,5,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_3458910_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,5,8,9,11
echo 3 4,5,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_3458911_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,5,8,10,11
echo 3 4,5,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_34581011_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,5,9,10,11
echo 3 4,5,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_34591011_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,6,7,8,9
echo 3 4,6,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_346789_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,6,7,8,10
echo 3 4,6,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_3467810_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,6,7,8,11
echo 3 4,6,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_3467811_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,6,7,9,10
echo 3 4,6,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_3467910_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,6,7,9,11
echo 3 4,6,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_3467911_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,6,7,10,11
echo 3 4,6,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_34671011_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,6,8,9,10
echo 3 4,6,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_3468910_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,6,8,9,11
echo 3 4,6,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_3468911_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,6,8,10,11
echo 3 4,6,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_34681011_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,6,9,10,11
echo 3 4,6,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_34691011_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,7,8,9,10
echo 3 4,7,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_3478910_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,7,8,9,11
echo 3 4,7,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_3478911_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,7,8,10,11
echo 3 4,7,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_34781011_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,7,9,10,11
echo 3 4,7,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_34791011_${sn}_Sixes.csv


# DAQ1 ELINK 3 4,8,9,10,11
echo 3 4,8,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_34891011_${sn}_Sixes.csv


# DAQ1 ELINK 3 5,6,7,8,9
echo 3 5,6,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_356789_${sn}_Sixes.csv


# DAQ1 ELINK 3 5,6,7,8,10
echo 3 5,6,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_3567810_${sn}_Sixes.csv


# DAQ1 ELINK 3 5,6,7,8,11
echo 3 5,6,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_3567811_${sn}_Sixes.csv


# DAQ1 ELINK 3 5,6,7,9,10
echo 3 5,6,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_3567910_${sn}_Sixes.csv


# DAQ1 ELINK 3 5,6,7,9,11
echo 3 5,6,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_3567911_${sn}_Sixes.csv


# DAQ1 ELINK 3 5,6,7,10,11
echo 3 5,6,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_35671011_${sn}_Sixes.csv


# DAQ1 ELINK 3 5,6,8,9,10
echo 3 5,6,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_3568910_${sn}_Sixes.csv


# DAQ1 ELINK 3 5,6,8,9,11
echo 3 5,6,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_3568911_${sn}_Sixes.csv


# DAQ1 ELINK 3 5,6,8,10,11
echo 3 5,6,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_35681011_${sn}_Sixes.csv


# DAQ1 ELINK 3 5,6,9,10,11
echo 3 5,6,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_35691011_${sn}_Sixes.csv


# DAQ1 ELINK 3 5,7,8,9,10
echo 3 5,7,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_3578910_${sn}_Sixes.csv


# DAQ1 ELINK 3 5,7,8,9,11
echo 3 5,7,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_3578911_${sn}_Sixes.csv


# DAQ1 ELINK 3 5,7,8,10,11
echo 3 5,7,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_35781011_${sn}_Sixes.csv


# DAQ1 ELINK 3 5,7,9,10,11
echo 3 5,7,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_35791011_${sn}_Sixes.csv


# DAQ1 ELINK 3 5,8,9,10,11
echo 3 5,8,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_35891011_${sn}_Sixes.csv


# DAQ1 ELINK 3 6,7,8,9,10
echo 3 6,7,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_3678910_${sn}_Sixes.csv


# DAQ1 ELINK 3 6,7,8,9,11
echo 3 6,7,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_3678911_${sn}_Sixes.csv


# DAQ1 ELINK 3 6,7,8,10,11
echo 3 6,7,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_36781011_${sn}_Sixes.csv


# DAQ1 ELINK 3 6,7,9,10,11
echo 3 6,7,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_36791011_${sn}_Sixes.csv


# DAQ1 ELINK 3 6,8,9,10,11
echo 3 6,8,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_36891011_${sn}_Sixes.csv


# DAQ1 ELINK 3 7,8,9,10,11
echo 3 7,8,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_37891011_${sn}_Sixes.csv


# DAQ1 ELINK 4 5,6,7,8,9
echo 4 5,6,7,8,9 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_456789_${sn}_Sixes.csv


# DAQ1 ELINK 4 5,6,7,8,10
echo 4 5,6,7,8,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_4567810_${sn}_Sixes.csv


# DAQ1 ELINK 4 5,6,7,8,11
echo 4 5,6,7,8,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_4567811_${sn}_Sixes.csv


# DAQ1 ELINK 4 5,6,7,9,10
echo 4 5,6,7,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_4567910_${sn}_Sixes.csv


# DAQ1 ELINK 4 5,6,7,9,11
echo 4 5,6,7,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_4567911_${sn}_Sixes.csv


# DAQ1 ELINK 4 5,6,7,10,11
echo 4 5,6,7,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_45671011_${sn}_Sixes.csv


# DAQ1 ELINK 4 5,6,8,9,10
echo 4 5,6,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_4568910_${sn}_Sixes.csv


# DAQ1 ELINK 4 5,6,8,9,11
echo 4 5,6,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_4568911_${sn}_Sixes.csv


# DAQ1 ELINK 4 5,6,8,10,11
echo 4 5,6,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_45681011_${sn}_Sixes.csv


# DAQ1 ELINK 4 5,6,9,10,11
echo 4 5,6,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_45691011_${sn}_Sixes.csv


# DAQ1 ELINK 4 5,7,8,9,10
echo 4 5,7,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_4578910_${sn}_Sixes.csv


# DAQ1 ELINK 4 5,7,8,9,11
echo 4 5,7,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_4578911_${sn}_Sixes.csv


# DAQ1 ELINK 4 5,7,8,10,11
echo 4 5,7,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_45781011_${sn}_Sixes.csv


# DAQ1 ELINK 4 5,7,9,10,11
echo 4 5,7,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_45791011_${sn}_Sixes.csv


# DAQ1 ELINK 4 5,8,9,10,11
echo 4 5,8,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_45891011_${sn}_Sixes.csv


# DAQ1 ELINK 4 6,7,8,9,10
echo 4 6,7,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_4678910_${sn}_Sixes.csv


# DAQ1 ELINK 4 6,7,8,9,11
echo 4 6,7,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_4678911_${sn}_Sixes.csv


# DAQ1 ELINK 4 6,7,8,10,11
echo 4 6,7,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_46781011_${sn}_Sixes.csv


# DAQ1 ELINK 4 6,7,9,10,11
echo 4 6,7,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_46791011_${sn}_Sixes.csv


# DAQ1 ELINK 4 6,8,9,10,11
echo 4 6,8,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_46891011_${sn}_Sixes.csv


# DAQ1 ELINK 4 7,8,9,10,11
echo 4 7,8,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_47891011_${sn}_Sixes.csv


# DAQ1 ELINK 5 6,7,8,9,10
echo 5 6,7,8,9,10 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_5678910_${sn}_Sixes.csv


# DAQ1 ELINK 5 6,7,8,9,11
echo 5 6,7,8,9,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_5678911_${sn}_Sixes.csv


# DAQ1 ELINK 5 6,7,8,10,11
echo 5 6,7,8,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_56781011_${sn}_Sixes.csv


# DAQ1 ELINK 5 6,7,9,10,11
echo 5 6,7,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_56791011_${sn}_Sixes.csv


# DAQ1 ELINK 5 6,8,9,10,11
echo 5 6,8,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_56891011_${sn}_Sixes.csv


# DAQ1 ELINK 5 7,8,9,10,11
echo 5 7,8,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_57891011_${sn}_Sixes.csv


# DAQ1 ELINK 6 7,8,9,10,11
echo 6 7,8,9,10,11 DAQ1

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

./wagoneer.py --scan > DAQScans/1/Sixes/DAQ1_67891011_${sn}_Sixes.csv



