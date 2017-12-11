#!/bin/sh

# Install codedeploy to Troubleshoot

wget https://aws-codedeploy-us-west-2.s3.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
sudo service codedeploy-agent status

# code deploy agent log file location.
# /opt/codedeploy-agent/deployment-root/deployment-logs/codedeploy-agent-deployments.log

# Install jdk 8

wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u141-b15/336fa29ff2bb4ef291e347e091f7f4a7/jdk-8u141-linux-x64.rpm
sudo yum install -y jdk-8u141-linux-x64.rpm


mkdir /tmp/app