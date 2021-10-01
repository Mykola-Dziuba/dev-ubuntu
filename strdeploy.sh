#!/bin/bash
PATH=$PATH:$HOME/bin:/usr/sbin:/usr/bin:/script
export PAT

#download app files from git and go to the directory
cd; mkdir flask-app; cd flask-app
sudo apt-get update
sudo apt-get inatall git; git init; git clone https://github.com/Mykola-Dziuba/dev-ubuntu.git

#install docker 
cd; sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg -y
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null -y
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

#install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose -y
sudo chmod +x /usr/local/bin/docker-compose -y

#Сreating a directory for the Redis configuration
sudo mkdir -p /opt/redis/{etc,data}

#Сreating a directory for Redis databases
sudo mkdir /opt/redis/data/{bases,log}

#Copy the Redis configuration file to the directory
sudo mv /flask-app/dev-ubuntu/redis.conf /opt/redis/etc/redis.conf

