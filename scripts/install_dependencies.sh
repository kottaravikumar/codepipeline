#!/bin/bash

mkdir -p /tmp/app
yum update -y

echo "Installing httpd"
yum install -y httpd

yum install -y ruby
yum install -y wget
wget https://aws-codedeploy-us-west-2.s3.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
sudo service codedeploy-agent start
sudo service codedeploy-agent status
