#!/bin/bash

#Update system
sudo apt update -y
sudo apt upgrade -y

#Install wiregard vpn
sudo apt install wireguard -y

#Set key to the wireguard path via symlink
sudo cp ./wg0.conf /etc/wireguard/wg0.conf

#Setup new network interface for vpn biding
sudo wg-quick up wg0

#start the vpn service at startup and start it now
sudo systemctl start wg-quick@wg0.service
sudo systemctl enable wg-quick@wg0.service
