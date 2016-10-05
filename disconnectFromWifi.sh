#!/bin/sh

INT=wlan0

/sbin/wpa_cli -i $INT terminate
/sbin/dhclient -r $INT
/sbin/ifconfig $INT down
/sbin/ifconfig $INT
