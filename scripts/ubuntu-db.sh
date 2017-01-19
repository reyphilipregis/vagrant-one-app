#!/bin/bash

# Install MongoDB
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/so$
sudo apt-get update
sudo apt-get install -y --allow-unauthenticated mongodb
export LC_ALL=C
sudo chmod 777 /etc/systemd/system/
sudo touch /etc/systemd/system/mongodb.service
sudo chmod 7777 /etc/systemd/system/mongodb.service
