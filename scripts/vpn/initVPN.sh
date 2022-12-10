#!/bin/bash

apt-get update -y
apt-get install wireguard -y
wg-quick up wg0
systemctl enable wg-quick@wg0.service
