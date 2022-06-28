#!/bin/bash

sn=${1}

./wagoneer.py --tx 0 --mode 7
./wagoneer.py --tx 1 --mode 7
./wagoneer.py --tx 3 --mode 7
./wagoneer.py --tx 4 --mode 7

# DAQ 0s
echo DAQs
./wagoneer.py --tx 2 --mode 7

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 0

./wagoneer.py --rx 0 --clearinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --setinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > danScans/zero_DAQ2_${sn}_fc.csv

./wagoneer.py --tx 2 --mode 1

#DAQ2 ELINK 2 3
echo 2 3 DAQ2

./wagon_set_crosspoint.py --module 0 --outputs 0 2 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 2 --outputs 2 0 0 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --clearinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/2/DAQ_23_${sn}_fc.csv


# DAQ2 ELINK 2 4
echo 2 4 DAQ2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0
./wagon_set_crosspoint.py --module 2 --outputs 2 0 0 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --clearinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/2/DAQ2_24_${sn}_fc.csv


# DAQ2 ELINK 2 5
echo 2 5 DAQ2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
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

./wagoneer.py --scan > DAQScans/2/DAQ2_25_${sn}_fc.csv


# DAQ2 ELINK 2 6
echo 2 6 DAQ2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0
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

./wagoneer.py --scan > DAQScans/2/DAQ2_26_${sn}_fc.csv


# DAQ2 ELINK 2 7
echo 2 7 DAQ2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
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

./wagoneer.py --scan > DAQScans/2/DAQ2_27_${sn}_fc.csv


# DAQ2 ELINK 2 8
echo 2 8 DAQ2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
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

./wagoneer.py --scan > DAQScans/2/DAQ2_28_${sn}_fc.csv


# DAQ2 ELINK 2 9
echo 2 9 DAQ2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2
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

./wagoneer.py --scan > DAQScans/2/DAQ2_29_${sn}_fc.csv


# DAQ2 ELINK 2 10
echo 2 10 DAQ2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
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

./wagoneer.py --scan > DAQScans/2/DAQ2_210_${sn}_fc.csv


# DAQ2 ELINK 2 11
echo 2 11 DAQ2

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
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

./wagoneer.py --scan > DAQScans/2/DAQ2_211_${sn}_fc.csv
