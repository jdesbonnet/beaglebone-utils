#!/bin/bash
# Install MLO and u-boot.img on device /dev/mmcblk0

sudo dd if=MLO of=/dev/mmcblk0 count=1 seek=1 conv=notrunc bs=128k 
sudo dd if=u-boot.img of=/dev/mmcblk0 count=2 seek=1 conv=notrunc bs=384k 

