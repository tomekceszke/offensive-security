#!/bin/sh

INT=wlan0

if [ -z "$1" ]
  then
    echo "No .conf file supplied"
    exit 1
fi


#/sbin/wpa_cli -i $INT terminate
#/sbin/dhclient -r $INT
#/sbin/ifconfig $INT down
#/bin/sleep 5
/sbin/wpa_supplicant -i $INT -B -D nl80211,wext -c $1
/sbin/dhclient $INT
/sbin/ifconfig $INT
