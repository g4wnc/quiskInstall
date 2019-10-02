#!/bin/bash

echo " Script to install Quisk on a Raspberry Pi-3 or 4 running Buster."
echo "........................."

cd ~
sudo apt update

sudo apt install -y python-wxgtk3.0 libfftw3-dev libasound2-dev portaudio19-dev libpulse-dev libpython2.7-dev python-usb python-setuptools python-pip ||
{ echo ' Installing dependencies failled!'; exit 1;}


echo "-----------------"
echo "Finished prerequisites"
echo "-----------------"
echo " Installing QUISK"
cd ~
sudo -H pip install --upgrade quisk ||
{ echo ' Installing quisk failled!'; exit 1;}

echo "


All finished - now rebooting the Pi .....

"
sleep 4
rebooting