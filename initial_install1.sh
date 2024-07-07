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
sudo apt-get install -y libavcodec-dev 
sudo apt-get install -y libavformat-dev 
sudo apt-get install -y libswscale-dev 
sudo apt-get install -y libxvidcore-dev 
sudo apt-get install -y libx264-dev x264 
sudo apt-get install -y libxine2-dev 
sudo apt-get install -y libv4l-dev 
sudo apt-get install -y v4l-utils 
sudo apt-get install -y libgstreamer1.0-dev 
sudo apt-get install -y libgstreamer-plugins-base1.0-dev
sudo apt-get install -y mesa-utils 
sudo apt-get install -y libgl1-mesa-dri 
sudo apt-get install -y libatlas-base-dev 
sudo apt-get install -y gfortran 
sudo apt-get install -y libeigen3-dev 
sudo apt-get install -y libtbb2 
sudo apt-get install -y libtbb-dev
sudo apt-get install -y python3-dev 
sudo apt-get install -y python-numpy 
sudo apt-get install -y python3-numpy 
sudo apt-get install -y python3-setuptools
sudo apt-get install -y libavresample-dev 
sudo apt-get install -y liblapacke-dev 
sudo apt-get install -y qt5-default
sudo apt-get install -y python3-pip 
sudo apt-get install -y libopenblas-base 
sudo apt-get install -y libopenmpi-dev 
sudo apt-get install -y libomp-dev

#torchvision
sudo apt-get install -y libjpeg-dev 
sudo apt-get install -y zlib1g-dev 
sudo apt-get install -y libpython3-dev 
sudo apt-get install -y libopenblas-dev 
sudo apt-get install -y libavcodec-dev 
sudo apt-get install -y libavformat-dev 
sudo apt-get install -y libswscale-dev

sudo pip3 install wget
sudo pip3 install 'Cython<3'
sudo pip3 install numpy

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
