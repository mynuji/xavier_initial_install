#!/bin/sh


echo "================================================="
echo " 1. jetson_clocks setting..."
echo "================================================="


sudo jetson_clocks

sudo cp jetson_clocks.service /etc/systemd/system/

sudo systemctl enable jetson_clocks
sudo systemctl start jetson_clocks

