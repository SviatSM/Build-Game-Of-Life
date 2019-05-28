#!/bin/bash
echo "ISTALL BEGIN"
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $(whoami)
sudo systemctl enable docker.service
sudo systemctl start docker.service
sudo systemctl status docker

echo "INSTALL FINISHED"
