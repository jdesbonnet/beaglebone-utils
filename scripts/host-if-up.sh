#!/bin/bash
usb_if=(`netstat -i | grep enx`)
echo "BBB USB interface: $usb_if"
ifconfig $usb_if 192.168.7.1 netmask 255.255.255.252
