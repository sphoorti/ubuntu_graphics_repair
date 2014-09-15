#!/bin/sh
sudo apt-get install ppa-purge
sudo apt-get purge --auto-remove cinnamon
sudo apt-get purge --auto-remove ubuntu-desktop
sudo apt-get remove --purge xorg-driver-fglrx fglrx*
sudo apt-get autoremove
sudo apt-get update -f
sudo apt-get install --reinstall libgl1-mesa-glx libgl1-mesa-dri xserver-xorg-core
sudo dpkg-reconfigure xserver-xorg
sudo apt-get dist-upgrade
sudo apt-get install ubuntu-desktop
