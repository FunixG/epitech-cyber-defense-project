#!/bin/bash

#Update system
apt-get update -y

#Install wiregard vpn
apt-get install wireguard -y

#Set key to the wireguard path via symlink
ln -s /root/projects/epitech/CyberDefense/scripts/vpn/wg0.conf /etc/wireguard/wg0.conf

#Setup new network interface for vpn biding
wg-quick up wg0

#start the vpn service at startup and start it now
systemctl start wg-quick@wg0.service
systemctl enable wg-quick@wg0.service
