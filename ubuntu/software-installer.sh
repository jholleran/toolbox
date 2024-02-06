#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   	echo "This script must be run as root"
   	exit 1
fi


echo "Installing software for development environment..."

sudo apt-get update
sudo apt-get upgrade

sudo apt -y install \
  curl \
  git \
  openjdk-17-jdk

# ------------------------------------------------------------------- #
echo "Installing docker..."
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo docker run hello-world

sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

docker run hello-world

echo "Docker installed"

# ------------------------------------------------------------------- #

sudo snap install postman


## GIT config
git config --global user.email "jarlath.holleran@gmail.com"
git config --global user.name "Jarlath Holleran"
core.excludesfile=~/.gitignore_global