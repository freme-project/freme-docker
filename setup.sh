#!/bin/bash

readonly REPO_GIT=https://github.com/sandroacoelho/freme-docker.git

echo "---------------------------------------------------------------------------"
echo "Welcome to FREME NER setup"
echo "---------------------------------------------------------------------------"
sudo su

# Debian Jessie Config
echo "deb http://http.debian.net/debian wheezy-backports main" >  /etc/apt/sources.list.d/backports.list
echo "deb https://apt.dockerproject.org/repo debian-jessie main" >  /etc/apt/sources.list.d/docker.list

# Common config (Docker, curl, wget , csvtool, gawk, git and bzip2)
apt-get update
apt-get purge "lxc-docker*"
apt-get purge "docker.io*"
apt-cache policy docker-engine
apt-get install -y wget curl csvtool gawk git bzip2 apt-transport-https ca-certificates docker-engine
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D


#Docker compose
curl -L https://github.com/docker/compose/releases/download/1.8.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

cd /opt
git clone ${REPO_GIT}

echo "---------------------------------------------------------------------------"
echo "Configuration done!"
echo "---------------------------------------------------------------------------"
