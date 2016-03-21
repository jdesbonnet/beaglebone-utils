#!/bin/bash
# Motivation: every time BBB boots I have a different IF name 
# formatted as enxXXXXXXXXXX . So want to apply ifconfig to
# setup network connection to BeagleBone Black using first
# interface starting with 'enx'.
usb_if=(`netstat -i | grep enx`)
echo "BBB USB interface: $usb_if"
ifconfig $usb_if 192.168.7.1 netmask 255.255.255.252
