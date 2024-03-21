#!/bin/bash

# Update the apt package index.
/usr/bin/apt update -y

# Upgrade all installed packages to their latest versions.
/usr/bin/apt upgrade -y

# Install Python 3.
/usr/bin/apt install -y python3

# Install Nginx.
/usr/bin/apt install -y nginx

# Install AWS CLI.
/usr/bin/apt install -y awscli

