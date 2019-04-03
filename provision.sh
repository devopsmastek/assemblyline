#!/bin/bash

VAGRANT_HOST_DIR=/vagrant

########################
# Docker
########################
#echo "Starting Docker Daemon"
#sudo systemctl enable docker
#sudo usermod -aG docker ${USER}
#echo "verifying Docker status"
#docker ps -a
#docker -v
#docker pull jenkins:latest

##############################
# Ansible Installation
##############################
#!/bin/bash
echo "Installing Ansible..."
apt-get install -qq software-properties-common
apt-add-repository ppa:ansible/ansible
apt-get update -qq
apt-get install -qq ansible
echo "Installed Ansible verion is `ansible --version`"
#apt-get install -y python-pip python-dev
#pip install ansible
#pip install ansible
#mkdir /etc/ansible
#touch /etc/ansible/hosts
