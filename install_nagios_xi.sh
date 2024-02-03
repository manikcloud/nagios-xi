#!/bin/bash

# Ensure the script is executed with root privileges
if [ "$(id -u)" -ne 0 ]; then
  echo "This script must be run as root" 1>&2
  exit 1
fi

echo "Step 1: Updating the system package lists"
apt update

echo "Step 2: Installing Nagios XI"
# Logging in as root is handled by ensuring the script is run as root
# The installation script for Nagios XI is executed directly from the web
curl https://assets.nagios.com/downloads/nagiosxi/install.sh | sh

echo "Please follow the on-screen instructions to complete the Nagios XI installation."
