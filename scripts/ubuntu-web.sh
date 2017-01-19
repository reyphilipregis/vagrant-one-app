#!/bin/bash

# Install new version of Node
sudo npm cache clean -f
sudo npm install -g n
sudo n stable

# Install PM2 globally
sudo npm install -y pm2 -g
