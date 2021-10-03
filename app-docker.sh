#!/bin/bash
PATH=$PATH:$HOME/bin:/usr/sbin:/usr/bin:/script
export PAT

#Creating Docker images with help docker-compose
sudo docker-compose build

#Start Docker containers with aplecation
sudo docker-compose up

#Final message
echo "App is work. Great!"







