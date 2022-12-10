#!/bin/bash

systemctl disable wg-quick@wg0.service
systemctl stop wg-quick@wg0.service

apt-get update -y
apt-get remove wireguard -y
apt-get purge wireguard -y
