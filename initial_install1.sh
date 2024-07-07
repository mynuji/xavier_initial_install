#!/bin/sh

echo "==================================================="
echo " 1. Install required package"
echo " =================================================="

sudo apt-get install -y cmake
sudo apt-get install -y build-essential 
sudo apt-get install -y python3-pip
sudo apt-get install -y python3-numpy
sudo apt-get install -y python3-matplotlib
sudo apt-get install -y python-dev 
sudo apt-get install -y python-setuptools 
sudo apt-get install -y libboost-all-dev
sudo apt-get install -y libboost-python-dev 
sudo apt-get install -y libboost-thread-dev
sudo apt-get install -y libgflags-dev

sudo pip3 install wget
sudo pip3 install Cython

echo "==================================================="
echo " 2. Install jetson-state"
echo " =================================================="

sudo -H pip install -U jetson-stats

echo "==================================================="
echo " 3. enable fan controller"
echo " =================================================="

sudo systemctl stop nvfancontrol
sudo rm /var/lib/nvfancontrol/status
sudo systemctl start nvfancontrol
