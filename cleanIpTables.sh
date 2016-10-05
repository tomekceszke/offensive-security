#!/bin/sh

#delete all rules
sudo iptables -F
sudo iptables -t nat -F
sudo iptables -t mangle -F
sudo iptables -X

#disable routing
echo 1 > /proc/sys/net/ipv4/ip_forward

