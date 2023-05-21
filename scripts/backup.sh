#! /bin/bash
cd /home/krithika
sudo mount sda1 /mnt/usbstick
rm -rf /mnt/usbstick/*
cp /home/krithika/* /mnt/usbstick
sudo umount /mnt/usbstick
