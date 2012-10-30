#!/bin/sh
#
# Installation script for Matriux Disk Installer.
#

dest="/pt/matriux/MID"
icon="/pt/matriux/icons/48x48"

if [ $(id -ru) -ne 0 ]; then
	echo "[!] You need to have root rights !"
	exit 0
fi
[ ! -d ${dest} ] && mkdir -p ${dest}
[ ! -d ${icon} ] && mkdir -p ${icon}
install mid ${dest}
install icon.png ${icon}
chmod +x ${dest}/mid
install MID.desktop /usr/share/applications
echo " Installation done."
exit 0
