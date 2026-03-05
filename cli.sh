#!/bin/bash
echo " updating system and upgarding "
sudo apt update -y
sudo apt upgrade -y
echo " install unzip "
sudo apt install unzip curl -y

echo " donwnloading aws cli "
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

echo " unzip the file "
unzip awscliv2.zip

echo "installing awscli"
sudo ./aws/install

echo " verify installtaion"
aws --version
