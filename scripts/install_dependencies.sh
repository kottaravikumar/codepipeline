#!/bin/bash

mkdir -p /tmp/app
yum update -y

echo "Installing httpd"
yum install -y httpd
