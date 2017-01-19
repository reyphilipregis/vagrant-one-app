#!/bin/bash

# Install new version of NodeJS
sudo npm cache clean -f
sudo npm install -g n
sudo n stable

# Install PM2 globally
sudo npm install -y pm2 -g

# Install Mongoose
sudo npm install -y mongoose 
