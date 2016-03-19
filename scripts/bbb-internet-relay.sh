#!/bin/bash
# Relay IP trafic from beaglebone connected via USB
BBB_USB_ETH=enx9059af64144d
BBB_USB_ETH=enx84eb18e4ac9e
#INTERNET_DEV=wlp2s0
INTERNET_DEV=eno1
iptables --table nat --append POSTROUTING --out-interface $INTERNET_DEV -j MASQUERADE
iptables --append FORWARD --in-interface $BBB_USB_ETH -j ACCEPT
echo 1 > /proc/sys/net/ipv4/ip_forward

