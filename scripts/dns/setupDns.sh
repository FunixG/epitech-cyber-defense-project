#!/bin/bash

#Updates the system
sudo apt update -y && apt-get upgrade -y

#Installs dns bind9
sudo apt install bind9 bind9utils -y

#Set the domain name for the docker instance
echo "powerzio.net" | sudo tee "/etc/hostname" > /dev/null

#Add the localhost with the domain name
echo "127.0.0.1 powerzio.net" | sudo tee -a "/etc/hosts" > /dev/null

cat ./configs/db.powerzio.net | sudo tee "/etc/bind/db.powerzio.net" > /dev/null
cat ./configs/db.10 | sudo tee "/etc/bind/db.10" > /dev/null

#Dns principal
echo \
 "zone \"powerzio.net\" {\
  type master;\
  file \"/etc/bind/db.powerzio.net\";\
};" | sudo tee -a "/etc/bind/named.conf.local"

#Reverse dns
echo \
  "zone \"0.10.10.in-addr.arpa\" {\
  type master;\
  notify no;
  file \"/etc/bind/db.10\";\
};" | sudo tee -a "/etc/bind/named.conf.local"

sudo systemctl restart bind9
sudo systemctl enable bind9
