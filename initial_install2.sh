#!/bin/sh

sudo jetson_clocks

sudo vi /etc/systemd/system/jetson_clocks.service

[Unit]
Description=Jetson Clocks Maximize
After=network.target

[Service]
Type=simple
ExecStart=/usr/bin/jetson_clocks

[Install]
WantedBy=multi-user.target


sudo systemctl enable jetson_clocks
sudo systemctl start jetson_clocks

sudo reboot
