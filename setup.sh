#!/bin/bash

# TODO: If this file is not in ~/Projects/.dotfiles, exit

# Move to base directory
cd ~/Projects/.config/

#
# Symlinks, symlinks everywhere!
#

# Awesome WM
ln -s {`pwd`,~/.config}/awesome

# udev rules
sudo ln -s {`pwd`,/etc/udev/rules}/udev/97-udisks2.rules
sudo ln -s {`pwd`,/etc/udev/rules}/udev/98-firmware-dev.rules
sudo ln -s {`pwd`,/etc/udev/rules}/udev/99-unaliwear.rules

# fstab
sudo cp /etc/fstab ./fstab
cat fstab.adtl >> ./fstab
sudo mv /etc/fstab{,.bak}
sudo mv ./fstab /etc/fstab

# fstab (dirs)
sudo mkdir -p /media/{TheUSBDrive,MBed-FRDM-K64F}
