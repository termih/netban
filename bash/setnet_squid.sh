#!/bin/bash

# Törli a megadott IP címet
# Terv szerint fájlból fogja

# Használat
# ./setnet_squid.sh 172.16.16.36

# Jelenleg csak a képernyőre írja
# a változást

IP=$1
TARGET="^"$IP"$"

cat address.txt | sed "/$TARGET/d"
