#!/bin/bash
sudo apt-get update && sudo apt-get install ufw -y
sudo ufw default deny incoming
sudo ufw default allow outgoing

sudo ufw allow 32798/tcp
sudo ufw allow 8080:8090/tcp
sudo ufw allow http
sudo ufw allow https
sudo ufw allow redis
sudo ufw allow 8443/tcp
sudo ufw enable

#sudo ufw allow from 199.180.117.128 proto tcp to any port 81

#sudo ufw allow from 101.228.151.31 proto tcp to any port 81
#sudo ufw allow from 101.228.151.31 to any port 81
#sudo ufw allow from 199.180.117.128 to any port 81
