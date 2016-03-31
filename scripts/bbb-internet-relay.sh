#!/bin/bash
# Relay IP trafic from beaglebone connected via USB

# What is USB interface to BBB?
BBB_USB_IF=(`netstat -i | grep enx`)
echo "BBB USB interface: $BBB_USB_IF"

# What is interface with default route on host?
array=(`netstat -r -n | grep "^0.0.0.0"`)
INTERNET_IF=${array[7]}
echo "Internet interface: $INTERNET_IF"

iptables --table nat --append POSTROUTING --out-interface $INTERNET_IF -j MASQUERADE
iptables --append FORWARD --in-interface $BBB_USB_IF -j ACCEPT
echo 1 > /proc/sys/net/ipv4/ip_forward

