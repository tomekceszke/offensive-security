#!/bin/sh

INT=wlan0

if [ $# -ne 1 ]
then
	echo "USAGE $0 <VictimIP>"
	exit 1
fi

/usr/bin/nmap -e $INT  -A -T4 -F $1
