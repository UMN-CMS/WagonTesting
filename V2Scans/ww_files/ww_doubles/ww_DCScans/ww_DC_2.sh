#!/bin/bash

sn=${1}

./wagoneer.py --tx 0 --mode 7
./wagoneer.py --tx 1 --mode 7
./wagoneer.py --tx 2 --mode 7
./wagoneer.py --tx 3 --mode 7
./wagoneer.py --tx 4 --mode 7

./wagoneer.py --tx 0 --mode 2
./wagoneer.py --tx 1 --mode 2
./wagoneer.py --tx 2 --mode 2
./wagoneer.py --tx 1 --mode 1

# DAQ, Clock ELINK 0 1
echo 0 1 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_01_${sn}_Duos.csv


# DAQ, Clock ELINK 0 2
echo 0 2 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_02_${sn}_Duos.csv


# DAQ, Clock ELINK 0 3
echo 0 3 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 2 1 0 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_03_${sn}_Duos.csv


# DAQ, Clock ELINK 0 4
echo 0 4 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_04_${sn}_Duos.csv


# DAQ, Clock ELINK 0 5
echo 0 5 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_05_${sn}_Duos.csv


# DAQ, Clock ELINK 0 6
echo 0 6 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 2 0 1 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_06_${sn}_Duos.csv


# DAQ, Clock ELINK 0 7
echo 0 7 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_07_${sn}_Duos.csv


# DAQ, Clock ELINK 0 8
echo 0 8 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_08_${sn}_Duos.csv


# DAQ, Clock ELINK 0 9
echo 0 9 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 1 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_09_${sn}_Duos.csv


# DAQ, Clock ELINK 0 10
echo 0 10 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_010_${sn}_Duos.csv


# DAQ, Clock ELINK 0 11
echo 0 11 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_011_${sn}_Duos.csv


# DAQ, Clock ELINK 1 2
echo 1 2 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_12_${sn}_Duos.csv


# DAQ, Clock ELINK 1 3
echo 1 3 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_13_${sn}_Duos.csv


# DAQ, Clock ELINK 1 4
echo 1 4 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 1 0 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_14_${sn}_Duos.csv


# DAQ, Clock ELINK 1 5
echo 1 5 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_15_${sn}_Duos.csv


# DAQ, Clock ELINK 1 6
echo 1 6 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_16_${sn}_Duos.csv


# DAQ, Clock ELINK 1 7
echo 1 7 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 1 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_17_${sn}_Duos.csv


# DAQ, Clock ELINK 1 8
echo 1 8 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_18_${sn}_Duos.csv


# DAQ, Clock ELINK 1 9
echo 1 9 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_19_${sn}_Duos.csv


# DAQ, Clock ELINK 1 10
echo 1 10 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 1 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_110_${sn}_Duos.csv


# DAQ, Clock ELINK 1 11
echo 1 11 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_111_${sn}_Duos.csv


# DAQ, Clock ELINK 2 3
echo 2 3 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 1 0 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_23_${sn}_Duos.csv


# DAQ, Clock ELINK 2 4
echo 2 4 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 1 0 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_24_${sn}_Duos.csv


# DAQ, Clock ELINK 2 5
echo 2 5 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 2 1 0 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_25_${sn}_Duos.csv


# DAQ, Clock ELINK 2 6
echo 2 6 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_26_${sn}_Duos.csv


# DAQ, Clock ELINK 2 7
echo 2 7 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_27_${sn}_Duos.csv


# DAQ, Clock ELINK 2 8
echo 2 8 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 2 0 1 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_28_${sn}_Duos.csv


# DAQ, Clock ELINK 2 9
echo 2 9 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_29_${sn}_Duos.csv


# DAQ, Clock ELINK 2 10
echo 2 10 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 1 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_210_${sn}_Duos.csv


# DAQ, Clock ELINK 2 11
echo 2 11 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 2 0 0 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_211_${sn}_Duos.csv


# DAQ, Clock ELINK 3 4
echo 3 4 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_34_${sn}_Duos.csv


# DAQ, Clock ELINK 3 5
echo 3 5 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_35_${sn}_Duos.csv


# DAQ, Clock ELINK 3 6
echo 3 6 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 2 1 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_36_${sn}_Duos.csv


# DAQ, Clock ELINK 3 7
echo 3 7 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_37_${sn}_Duos.csv


# DAQ, Clock ELINK 3 8
echo 3 8 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_38_${sn}_Duos.csv


# DAQ, Clock ELINK 3 9
echo 3 9 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 1 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_39_${sn}_Duos.csv


# DAQ, Clock ELINK 3 10
echo 3 10 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_310_${sn}_Duos.csv


# DAQ, Clock ELINK 3 11
echo 3 11 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_311_${sn}_Duos.csv


# DAQ, Clock ELINK 4 5
echo 4 5 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_45_${sn}_Duos.csv


# DAQ, Clock ELINK 4 6
echo 4 6 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_46_${sn}_Duos.csv


# DAQ, Clock ELINK 4 7
echo 4 7 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 1 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_47_${sn}_Duos.csv


# DAQ, Clock ELINK 4 8
echo 4 8 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_48_${sn}_Duos.csv


# DAQ, Clock ELINK 4 9
echo 4 9 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_49_${sn}_Duos.csv


# DAQ, Clock ELINK 4 10
echo 4 10 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 1 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_410_${sn}_Duos.csv


# DAQ, Clock ELINK 4 11
echo 4 11 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_411_${sn}_Duos.csv


# DAQ, Clock ELINK 5 6
echo 5 6 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 1 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_56_${sn}_Duos.csv


# DAQ, Clock ELINK 5 7
echo 5 7 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 1 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_57_${sn}_Duos.csv


# DAQ, Clock ELINK 5 8
echo 5 8 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 2 1 0 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_58_${sn}_Duos.csv


# DAQ, Clock ELINK 5 9
echo 5 9 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_59_${sn}_Duos.csv


# DAQ, Clock ELINK 5 10
echo 5 10 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 1 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_510_${sn}_Duos.csv


# DAQ, Clock ELINK 5 11
echo 5 11 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 2 0 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_511_${sn}_Duos.csv


# DAQ, Clock ELINK 6 7
echo 6 7 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_67_${sn}_Duos.csv


# DAQ, Clock ELINK 6 8
echo 6 8 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_68_${sn}_Duos.csv


# DAQ, Clock ELINK 6 9
echo 6 9 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 1 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_69_${sn}_Duos.csv


# DAQ, Clock ELINK 6 10
echo 6 10 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_610_${sn}_Duos.csv


# DAQ, Clock ELINK 6 11
echo 6 11 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_611_${sn}_Duos.csv


# DAQ, Clock ELINK 7 8
echo 7 8 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_78_${sn}_Duos.csv


# DAQ, Clock ELINK 7 9
echo 7 9 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_79_${sn}_Duos.csv


# DAQ, Clock ELINK 7 10
echo 7 10 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 1 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_710_${sn}_Duos.csv


# DAQ, Clock ELINK 7 11
echo 7 11 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_711_${sn}_Duos.csv


# DAQ, Clock ELINK 8 9
echo 8 9 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 1 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_89_${sn}_Duos.csv


# DAQ, Clock ELINK 8 10
echo 8 10 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 1
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_810_${sn}_Duos.csv


# DAQ, Clock ELINK 8 11
echo 8 11 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 2 --outputs 0 0 2 1 

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_811_${sn}_Duos.csv


# DAQ, Clock ELINK 9 10
echo 9 10 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_910_${sn}_Duos.csv


# DAQ, Clock ELINK 9 11
echo 9 11 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_911_${sn}_Duos.csv


# DAQ, Clock ELINK 10 11
echo 10 11 DAQ, Clock

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2 
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

./wagoneer.py --scan > CombinationScans/DCScans/Duos/2/DC_1011_${sn}_Duos.csv



