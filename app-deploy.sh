#!/bin/bash
PATH=$PATH:$HOME/bin:/usr/sbin:/usr/bin:/script
export PAT

#download app files from git and go to the directory
sudo apt-get update; cd; sudo mkdir flask-app; cd flask-app
sudo apt-get inatall git; git init; git clone https://github.com/Mykola-Dziuba/dev-ubuntu.git

#install docker 
cd; sudo apt-get update
sudo apt-get install; apt-transport-https; ca-certificates; curl; gnupg; lsb-release -y

sudo chmod o+r /usr/share/keyrings/docker-archive-keyring.gpg

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg -y
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null 
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io 

#install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose 
sudo chmod +x /usr/local/bin/docker-compose 

#Create the docker group
sudo groupadd docker

#Add your user to the docker group
sudo usermod -aG docker $USER

#Go to application directory 
cd; cd flask-app/dev-ubuntu/

#Creating Docker images with help docker-compose
sudo docker-compose build

#Start Docker containers with aplecation
sudo docker-compose up

#Final message
echo "App is work. Great!"







