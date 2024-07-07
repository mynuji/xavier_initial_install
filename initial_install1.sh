#!/bin/sh

echo "==================================================="
echo " 1. 처음 필요한 패키지들을 설치합니다. 
echo " =================================================="

sudo apt-get update
sudo apt-get upgrade
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
sudo apt-get install -y fcitx-hangul
sudo apt-get install -y cmake-qt-gui
sudo apt-get install -y git
sudo apt-get install -y libqt5*-dev 
sudo apt-get install -y pkg-config
sudo apt-get install -y libjpeg-dev 
sudo apt-get install -y libtiff5-dev 
sudo apt-get install -y libpng-dev

sudo pip3 install wget
sudo pip3 install Cython

echo "==================================================="
echo " 2. jtop 실행하기 위한 패키지 설치
echo " =================================================="

sudo -H pip install -U jetson-stats

echo "==================================================="
echo " 3.팬 속도 조절 (/etc/nvfancontrol.conf 로 속도 조절)
echo " =================================================="

sudo systemctl stop nvfancontrol
sudo rm /var/lib/nvfancontrol/status
sudo systemctl start nvfancontrol

echo "============================================================="
echo "  재부팅(reboot) 후에 jtop, fan control, fcitx-hangul이 작동합니다."
echo "=============================================================="
