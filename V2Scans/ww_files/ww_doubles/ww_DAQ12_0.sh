#!/bin/bash

sn=${1}

./wagoneer.py --tx 0 --mode 7
./wagoneer.py --tx 1 --mode 7
./wagoneer.py --tx 2 --mode 7
./wagoneer.py --tx 3 --mode 7
./wagoneer.py --tx 4 --mode 7

./wagoneer.py --tx 1 --mode 1
./wagoneer.py --tx 2 --mode 1


# DAQ1,2 ELINK 0 1
echo 1 2 DAQ1,2,2

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 2 0 0 0
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --setinvert
./wagoneer.py --rx 5 --setinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/12/DAQ12_1_${sn}_fc.csv


# DAQ1,2 ELINK 0 2
echo 0 2 DAQ1,2

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 2 --outputs 2 0 0 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --setinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/12/DAQ12_2_${sn}_fc.csv


# DAQ1,2 ELINK 0 3
echo 0 3 DAQ1,2

./wagon_set_crosspoint.py --module 0 --outputs 2 2 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --clearinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --setinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/12/DAQ12_3_${sn}_fc.csv


# DAQ1,2 ELINK 0 4
echo 0 4 DAQ1,2

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 2 0 0
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --clearinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --setinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/12/DAQ12_4_${sn}_fc.csv


# DAQ1,2 ELINK 0 5
echo 0 5 DAQ1,2

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 2 --outputs 0 2 0 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --setinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/12/DAQ12_5_${sn}_fc.csv


# DAQ1,2 ELINK 0 6
echo 0 6 DAQ1,2

./wagon_set_crosspoint.py --module 0 --outputs 2 0 2 0
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --setinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/12/DAQ12_6_${sn}_fc.csv


# DAQ1,2 ELINK 0 7
echo 0 7 DAQ1,2

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 0 2 0
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --setinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/12/DAQ12_7_${sn}_fc.csv


# DAQ1,2 ELINK 0 8
echo 0 8 DAQ1,2

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 2 --outputs 0 0 2 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --setinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/12/DAQ12_8_${sn}_fc.csv


# DAQ1,2 ELINK 0 9
echo 0 9 DAQ1,2

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 2
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --setinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/12/DAQ12_9_${sn}_fc.csv


# DAQ1,2 ELINK 0 10
echo 0 10 DAQ1,2

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 2
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --setinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --clearinvert

./wagoneer.py --scan > DAQScans/12/DAQ12_10_${sn}_fc.csv


# DAQ1,2 ELINK 0 11
echo 0 11 DAQ1,2

./wagon_set_crosspoint.py --module 0 --outputs 2 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 2

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --setinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > DAQScans/12/DAQ12_11_${sn}_fc.csv
