#!/bin/bash

sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config;
sudo apt update -y;
sudo apt upgrade -y;
echo "deb http://archive.ubuntu.com/ubuntu bionic main universe" >> /etc/apt/sources.list;
echo "deb http://archive.ubuntu.com/ubuntu bionic-security main universe" >> /etc/apt/sources.list;
echo "deb http://archive.ubuntu.com/ubuntu bionic-updates main universe" >> /etc/apt/sources.list;
sudo apt install python3-pip ansible sshpass python python3 -y;
cd /home/vagrant;
echo "export ANSIBLE_HOST_KEY_CHECKING=false" >> /home/vagrant/.profile;
source /home/vagrant/.profile;
touch inventory.ini;
cat << 'EOF' > /home/vagrant/inventory.ini
[webservers]
web1 ansible_host=192.168.56.12 ansible_user=vagrant ansible_password=vagrant
web2 ansible_host=192.168.56.89 ansible_user=vagrant ansible_password=vagrant
web3 ansible_host=192.168.56.14 ansible_user=vagrant ansible_password=vagrant
web4 ansible_host=192.168.56.15 ansible_user=vagrant ansible_password=vagrant
EOF
sudo systemctl restart sshd.service;
# sudo shutdown -r now