#!/bin/sh

INT=wlan0

if [ $# -ne 1 ]
then
	echo "USAGE $0 <VictimIP>"
	exit 1
fi


/usr/sbin/tcpdump -i $INT -n host $1 and not arp

