#!/bin/sh

INT=wlan0

if [ $# -ne 1 ]
then
	echo "USAGE $0 <SubnetIP>"
	exit 1
fi

/usr/bin/nmap -e $INT -sP -T4 $1/24
