#!/bin/sh

sudo jetson_clocks

sudo cp jetson_clocks.service /etc/systemd/system/

sudo systemctl enable jetson_clocks
sudo systemctl start jetson_clocks

echo "=========================================="
echo " needed system reboot."
echo "=========================================="
