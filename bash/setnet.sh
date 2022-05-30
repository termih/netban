#!/bin/bash

# 2022-05-30
# Enable internet for host

echo $1

ARG_COUNT=$#
ROOM=$1
HOST=$2
ACTION=$3
FILENAME=net_${ROOM}_${HOST}_Stop

function check_args() {
	if [ $ARG_COUNT -ne 3 ]
	then
		echo "setnet.sh 2022-05-30 verzió 0.1"
		echo
		echo "Hiba! Érvénytelen a paraméterlista száma!"
		echo
		echo "Használat:"
		echo "  setnet.sh <terem> <gépszám> <akció>
		echo "    terem pl.: 13"
		echo "    gépszám pl.: 01 - kötelezően két számjegyű"
		echo "    tiltás: 1 tiltás, 0 engedve"
		exit
	fi

}

function check_host() {
	HOST_NAME_LEN=${#HOST}
	if [ $HOST_NAME_LEN -ne 2 ]
	then
		echo "A $HOST gépnév nem megfelelő hosszú: $HOST_NAME_LEN"
		echo "Például 01 - vezető nullával 2 karakter hosszú"
		exit
	fi
}

check_args
check_host



ADDRESS=host/$FILENAME

if [ $ACTION eq 1 ]
then
	nft replace rule inet filter forward ip saddr $ADDRESS  accept
else
	nft add 
fi 
