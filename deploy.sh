#!/bin/bash

echo "Deploying rpios..."
wget 192.168.1.200:8123/kernel.img -O kernel.img
cp kernel.img /Volumes/boot/kernel.img
echo "Wrote kernel.img to sd card..."
ls -la /Volumes/boot/kernel.img
echo "Ready to eject..."
sudo diskutil eject /Volumes/boot/
echo "It's time for pi!"
clear

