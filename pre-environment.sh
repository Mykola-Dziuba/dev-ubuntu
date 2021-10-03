#!/bin/bash
PATH=$PATH:$HOME/bin:/usr/sbin:/usr/bin:/script
export PAT

sudo apt update
sudo apt upgrade -y

#Creating directory for our project
cd 
mkdir flask-app 
cd flask-app

#Removing the process that does not allow you to install Git
sudo kill 2460

#Download app files from git and go to the directory
sudo apt-get inatall git -y
git init 
git clone https://github.com/Mykola-Dziuba/dev-ubuntu.git

#Docker install 
#Install packages to allow apt to use a repository over HTTPS
cd; sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -y

#Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg -y
sudo chmod o+r /usr/share/keyrings/docker-archive-keyring.gpg

#Set up the stable repository
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null -y 

#Install the latest version of Docker Engine and containerd
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y 

#Install docker-compose
sudo apt-get install docker-compose -y
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose 
sudo chmod +x /usr/local/bin/docker-compose

#Create the docker group
sudo groupadd docker

#Add your user to the docker group
sudo usermod -aG docker $USER






