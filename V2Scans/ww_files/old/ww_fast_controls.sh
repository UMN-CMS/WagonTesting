#!/bin/bash

sn=${1}

./wagoneer.py --tx 0 --mode 7
./wagoneer.py --tx 1 --mode 7
./wagoneer.py --tx 2 --mode 7
./wagoneer.py --tx 3 --mode 7

# Fast control 0s
echo Fast control
./wagoneer.py --tx 4 --mode 7

./wagon_set_crosspoint.py --module 0 --outputs 0 0 0 0 
./wagon_set_crosspoint.py --module 1 --outputs 0 0 0 0
./wagon_set_crosspoint.py --module 2 --outputs 0 0 0 0

./wagoneer.py --rx 0 --clearinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > danScans/zero_scans_${sn}_fc.csv

# Fast control ELINK 0
echo 0 Fast
./wagoneer.py --tx 4 --mode 1

./wagon_set_crosspoint.py --module 0 --outputs 0 1 1 1
./wagon_set_crosspoint.py --module 1 --outputs 1 1 1 1
./wagon_set_crosspoint.py --module 2 --outputs 1 1 1 1

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --clearinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --clearinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > danScans/Fastscan_0_${sn}_Single.csv

#Fast control ELINK 1 
echo 1 Fast

./wagon_set_crosspoint.py --module 0 --outputs 1 1 1 1
./wagon_set_crosspoint.py --module 1 --outputs 0 1 1 1
./wagon_set_crosspoint.py --module 2 --outputs 1 1 1 1

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --clearinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --clearinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > danScans/Fastscan_1_${sn}_Single.csv

# Fast control ELINK 2
echo 2 Fast 

./wagon_set_crosspoint.py --module 0 --outputs 1 1 1 1
./wagon_set_crosspoint.py --module 1 --outputs 1 1 1 1
./wagon_set_crosspoint.py --module 2 --outputs 0 1 1 1 

./wagoneer.py --rx 0 --clearinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --setinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --clearinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > danScans/Fastscan_2_${sn}_Single.csv

# Fast Constol ELINK 3
echo 3 Fast 

./wagon_set_crosspoint.py --module 0 --outputs 1 0 1 1
./wagon_set_crosspoint.py --module 1 --outputs 1 1 1 1
./wagon_set_crosspoint.py --module 2 --outputs 1 1 1 1

./wagoneer.py --rx 0 --clearinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --clearinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --clearinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > danScans/Fastscan_3_${sn}_Single.csv


# Fast Constol ELINK 4
echo 4 Fast

./wagon_set_crosspoint.py --module 0 --outputs 1 1 1 1
./wagon_set_crosspoint.py --module 1 --outputs 1 0 1 1
./wagon_set_crosspoint.py --module 2 --outputs 1 1 1 1

./wagoneer.py --rx 0 --clearinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --clearinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --clearinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > danScans/Fastscan_4_${sn}_Single.csv


# Fast Constol ELINK 5
echo 5 Fast

./wagon_set_crosspoint.py --module 0 --outputs 1 1 1 1
./wagon_set_crosspoint.py --module 1 --outputs 1 1 1 1
./wagon_set_crosspoint.py --module 2 --outputs 1 0 1 1

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --clearinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --clearinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > danScans/Fastscan_5_${sn}_Single.csv

# Fast Constol ELINK 6
echo 6 Fast

./wagon_set_crosspoint.py --module 0 --outputs 1 1 0 1
./wagon_set_crosspoint.py --module 1 --outputs 1 1 1 1
./wagon_set_crosspoint.py --module 2 --outputs 1 1 1 1

./wagoneer.py --rx 0 --clearinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --clearinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --clearinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > danScans/Fastscan_6_${sn}_Single.csv


# Fast Constol XELINK 0
echo XL 0 Fast

./wagon_set_crosspoint.py --module 0 --outputs 1 1 1 1
./wagon_set_crosspoint.py --module 1 --outputs 1 1 0 1
./wagon_set_crosspoint.py --module 2 --outputs 1 1 1 1

./wagoneer.py --rx 0 --clearinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --clearinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --clearinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > danScans/FastscanX_0_${sn}_Single.csv

# Fast Constol XELINK 1
echo XL 1 Fast

./wagon_set_crosspoint.py --module 0 --outputs 1 1 1 1
./wagon_set_crosspoint.py --module 1 --outputs 1 1 1 1
./wagon_set_crosspoint.py --module 2 --outputs 1 1 0 1

./wagoneer.py --rx 0 --clearinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --clearinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --clearinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > danScans/FastscanX_1_${sn}_Single.csv

# Fast Constol XELINK 2 (EXTRA)
echo XL 2 Fast

./wagon_set_crosspoint.py --module 0 --outputs 1 1 1 0
./wagon_set_crosspoint.py --module 1 --outputs 1 1 1 1
./wagon_set_crosspoint.py --module 2 --outputs 1 1 1 1

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --clearinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --clearinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > danScans/FastscanX_2_${sn}_Single.csv

# Fast Constol XELINK 3 (EXTRA)
echo XL 3 Fast

./wagon_set_crosspoint.py --module 0 --outputs 1 1 1 1
./wagon_set_crosspoint.py --module 1 --outputs 1 1 1 0
./wagon_set_crosspoint.py --module 2 --outputs 1 1 1 1

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --clearinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --clearinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > danScans/FastscanX_3_${sn}_Single.csv

# Fast Constol XELINK 4 (EXTRA)
echo XL 4 Fast

./wagon_set_crosspoint.py --module 0 --outputs 1 1 1 1
./wagon_set_crosspoint.py --module 1 --outputs 1 1 1 1
./wagon_set_crosspoint.py --module 2 --outputs 1 1 1 0

./wagoneer.py --rx 0 --setinvert
./wagoneer.py --rx 1 --setinvert
./wagoneer.py --rx 2 --setinvert
./wagoneer.py --rx 3 --clearinvert
./wagoneer.py --rx 4 --clearinvert
./wagoneer.py --rx 5 --clearinvert
./wagoneer.py --rx 6 --setinvert
./wagoneer.py --txrx 0 --setinvert
./wagoneer.py --txrx 1 --setinvert

./wagoneer.py --scan > danScans/FastscanX_4_${sn}_Single.csv

