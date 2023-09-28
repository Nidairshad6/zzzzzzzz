#!/bin/bash
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 875681151031.dkr.ecr.us-east-1.amazonaws.com
mkdir -p /var/www/nida/
sudo cp -R /var/www/temp/* /var/www/nida
sudo docker pull 875681151031.dkr.ecr.us-east-1.amazonaws.com/repo1:latest
cd /var/www/nida
chmod +x ci_scripts/start.sh


