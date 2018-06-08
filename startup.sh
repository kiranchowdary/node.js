#!/bin/bash
sudo apt-get update
sudo apt-get install -y curl
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce
sudo docker load < samplenodejs.tar
sudo docker run -p 49160:8085 -d samplenodejs
sudo docker ps
curl -i localhost:49160
