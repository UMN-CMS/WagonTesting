#!/bin/bash

sn=${1}

./wagoneer.py --tx 0 --mode 7
./wagoneer.py --tx 1 --mode 7
./wagoneer.py --tx 2 --mode 7
./wagoneer.py --tx 3 --mode 7
./wagoneer.py --tx 4 --mode 7

./wagoneer.py --tx 1 --mode 1


# DAQ1 ELINK 0 1,2,3,4,5,6,7,8,9,10,11
echo 0 1,2,3,4,5,6,7,8,9,10,11 DAQ1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
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

./wagoneer.py --scan > DAQScans/1/All/DAQ1_0_${sn}_All.csv
./wagoneer.py --scan > DAQScans/1/All/DAQ1_1_${sn}_All.csv
./wagoneer.py --scan > DAQScans/1/All/DAQ1_2_${sn}_All.csv
./wagoneer.py --scan > DAQScans/1/All/DAQ1_3_${sn}_All.csv
./wagoneer.py --scan > DAQScans/1/All/DAQ1_4_${sn}_All.csv
./wagoneer.py --scan > DAQScans/1/All/DAQ1_5_${sn}_All.csv
./wagoneer.py --scan > DAQScans/1/All/DAQ1_6_${sn}_All.csv
./wagoneer.py --scan > DAQScans/1/All/DAQ1_7_${sn}_All.csv
./wagoneer.py --scan > DAQScans/1/All/DAQ1_8_${sn}_All.csv
./wagoneer.py --scan > DAQScans/1/All/DAQ1_9_${sn}_All.csv
