#!/bin/bash

echo "Entered into dependencies " > /tmp/test.log

mkdir -p /tmp/app/test/
echo "Created directory" >> /tmp/test.log

cd /tmp/app/test/
echo "Changed directory" >> /tmp/test.log

yum update -y
echo "yum updated" >> /tmp/test.log

yum install -y httpd
echo "Installed httpd" >> /tmp/test.log

yum install -y ruby
echo "Installed Ruby" >> /tmp/test.log

yum install -y wget
echo "Installed wget" >> /tmp/test.log

wget https://aws-codedeploy-us-west-2.s3.amazonaws.com/latest/install
echo "Downloaded installer " >> /tmp/test.log

chmod +x ./install
echo "Changed installer permissions " >> /tmp/test.log

sudo ./install auto
echo "installing installer " >> /tmp/test.log

sudo service codedeploy-agent start
echo "Started codedeploy-agent" >> /tmp/test.log

sudo service codedeploy-agent status
echo "status codedeploy-agent" >> /tmp/test.log
