#!/bin/bash

sn=${1}

./wagoneer.py --tx 0 --mode 7
./wagoneer.py --tx 1 --mode 7
./wagoneer.py --tx 2 --mode 7
./wagoneer.py --tx 3 --mode 7
./wagoneer.py --tx 4 --mode 7

./wagoneer.py --tx 0 --mode 1
./wagoneer.py --tx 1 --mode 1


Q0,1 ELINK 7 8
echo 7 8 DAQ0,1

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
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

./wagoneer.py --scan > DAQScans/01/DAQ01_78_${sn}_fc.csv


# DAQ0,1 ELINK 7 9
echo 7 9 DAQ0,1

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2
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

./wagoneer.py --scan > DAQScans/01/DAQ01_79_${sn}_fc.csv


# DAQ0,1 ELINK 7 10
echo 7 10 DAQ0,1

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
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

./wagoneer.py --scan > DAQScans/01/DAQ01_710_${sn}_fc.csv


# DAQ0,1 ELINK 7 11
echo 7 11 DAQ0,1

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
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

./wagoneer.py --scan > DAQScans/01/DAQ01_711_${sn}_fc.csv


# DAQ0,1 ELINK 8 9
echo 8 9 DAQ0,1

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2
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

./wagoneer.py --scan > DAQScans/01/DAQ01_89_${sn}_fc.csv


# DAQ0,1 ELINK 8 10
echo 8 10 DAQ0,1

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
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

./wagoneer.py --scan > DAQScans/01/DAQ01_810_${sn}_fc.csv


# DAQ0,1 ELINK 8 11
echo 8 11 DAQ0,1

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
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

./wagoneer.py --scan > DAQScans/01/DAQ01_811_${sn}_fc.csv

# DAQ0,1 ELINK 9 10
echo 9 10 DAQ0,1

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2
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

./wagoneer.py --scan > DAQScans/01/DAQ01_910_${sn}_fc.csv


# DAQ0,1 ELINK 9 11
echo 9 11 DAQ0,1

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2
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

./wagoneer.py --scan > DAQScans/01/DAQ01_911_${sn}_fc.csv


# DAQ0,1 ELINK 10 11
echo 10 11 DAQ0,1

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
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

./wagoneer.py --scan > DAQScans/01/DAQ01_1011_${sn}_fc.csv
