#!/bin/bash

#Update the system
sudo apt update -y
sudo apt upgrade -y

#Install the docker dependencies
sudo apt-get install \
     ca-certificates \
     curl \
     gnupg \
     lsb-release

#Add Docker official GPG key
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

#Setup Docker repo
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

#Install docker engine
sudo apt-get update -y
sudo apt-get install docker-ce docker-ce-cli docker-compose containerd.io docker-compose-plugin -y
sudo systemctl enable docker
