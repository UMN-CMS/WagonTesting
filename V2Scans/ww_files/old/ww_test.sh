#!/bin/bash

sn=${1}

./wagoneer.py --tx 0 --mode 8
./wagoneer.py --tx 1 --mode 8
./wagoneer.py --tx 2 --mode 8
./wagoneer.py --tx 3 --mode 8

# Fast control
echo Fast control
./wagoneer.py --tx 4 --mode 1

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 0

./wagoneer.py --rx 0 --clearinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > scan_${sn}_fc.csv
./wagoneer.py --tx 4 --mode 8

# Clock 320
echo Clock 320
./wagoneer.py --tx 3 --mode 1

./wagon_set_crosspoint.py --module 0 --outputs 1 1 1 1
./wagon_set_crosspoint.py --module 1 --outputs 1 1 1 1
./wagon_set_crosspoint.py --module 2 --outputs 1 1 1 1

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --clearinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --clearinvert

./wagoneer.py --scan > scan_${sn}_clk320.csv

./wagoneer.py --tx 3 --mode 8

# DAQ link 1
echo DAQ 1
./wagoneer.py --tx 0 --mode 1
./wagoneer.py --tx 1 --mode 1
./wagoneer.py --tx 2 --mode 1

./wagon_set_crosspoint.py --module 0 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 1 --outputs 2 2 2 2 
./wagon_set_crosspoint.py --module 2 --outputs 2 2 2 2 

./wagoneer.py --rx 0 --clearinvert
./wagoneer.py --rx 1 --clearinvert
./wagoneer.py --rx 2 --clearinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 5 --setinvert
./wagoneer.py --rx 6 --setinvert

./wagoneer.py --scan > scan_${sn}_daq1.csv

./wagoneer.py --tx 0 --mode 8
./wagoneer.py --tx 1 --mode 8
./wagoneer.py --tx 2 --mode 8


