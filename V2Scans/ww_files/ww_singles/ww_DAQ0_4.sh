#!/bin/bash

sn=${1}

./wagoneer.py --tx 1 --mode 7
./wagoneer.py --tx 2 --mode 7
./wagoneer.py --tx 3 --mode 7
./wagoneer.py --tx 4 --mode 7

# DAQ 0s
echo DAQs
./wagoneer.py --tx 0 --mode 7

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

./wagoneer.py --tx 0 --mode 1


# DAQ0 ELINK 4 5
echo 4 5 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0
./wagon_set_crosspoint.py --module 2 --outputs 0 2 0 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --clearinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/0/DAQ0_45_${sn}_fc.csv


# DAQ0 ELINK 4 6
echo 4 6 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 2 0
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --clearinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/0/DAQ0_46_${sn}_fc.csv


# DAQ0 ELINK 4 7
echo 4 7 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 2 2 0
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --clearinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/0/DAQ0_47_${sn}_fc.csv


# DAQ0 ELINK 4 8
echo 4 8 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0
./wagon_set_crosspoint.py --module 2 --outputs 0 0 2 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --clearinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/0/DAQ0_48_${sn}_fc.csv


# DAQ0 ELINK 4 9
echo 4 9 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 2
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --clearinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/0/DAQ0_49_${sn}_fc.csv


# DAQ0 ELINK 4 10
echo 4 10 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 2
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --clearinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/0/DAQ0_410_${sn}_fc.csv


# DAQ0 ELINK 4 11
echo 4 11 DAQ0

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 2

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --clearinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/0/DAQ0_411_${sn}_fc.csv
