#!/bin/bash
set -e
#
#############################################################
# Author 	: 	Hackman
# Website 	: 	https://sourceforge.net/projects/hackmanlinux/
# License	:	Distributed under the terms of GNU GPL v3
# Warning	:	These scripts come with NO WARRANTY!!!!!!
#############################################################

echo
echo "Removing WORK directory!"
rm -rf work

echo
echo "Removing OUT directory!"
rm -rf out

echo
echo "Cleaning Pacman caches!"
pacman -Scc --noconfirm --quiet

echo
echo "Removing Pacman PKG Cached Files!"
rm -rf /var/cache/pacman/pkg/*

echo
echo "Resync Pacman Databases"
pacman -Syu --quiet

echo
echo "All done! Build at will :P"
echo 

