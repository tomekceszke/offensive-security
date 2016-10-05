#!/bin/sh

if [ $# -ne 2 ]
then
	echo "USAGE $0 <pattern> <output>"
	exit 1
fi

l=${#1}

/usr/bin/crunch $l $l 0123456789 -t $1 -o $2 
