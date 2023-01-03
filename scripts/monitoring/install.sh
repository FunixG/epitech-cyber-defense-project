#!/bin/bash
#doc https://linuxhandbook.com/cockpit/

#Update system
sudo apt update -y
sudo apt upgrade -y

#Install cockpit monitoring dashboard
sudo apt -y install cockpit

#Access dashboard on localhost:9090
