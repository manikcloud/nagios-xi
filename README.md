# How to Install Nagios Monitoring Tool

This guide provides a step-by-step process for installing the latest version of Nagios XI on a fresh Ubuntu environment. Before proceeding with this installation, ensure that you are starting with a blank Ubuntu instance. Pre-installed packages or tools may interfere with the Nagios XI installation process.

## Pre-requisites

- A fresh Ubuntu server instance
- Root or sudo privileges

## Installation Steps

### Step 1: Updating the Packages

Ensure your package lists are up to date to avoid any conflicts during the installation of Nagios XI.

### Step 2: Installing Nagios XI

1. **Login as Root**: It's required to perform the installation as the root user or with root privileges.
2. **Install Nagios XI**: Use the provided command to fetch and execute the Nagios XI installation script.
3. **Navigate to the Installation UI**: After installation, access the Nagios XI user interface through the URL displayed in your terminal.
4. **Complete the Setup Wizard**:
   - Define General System Settings as prompted.
   - Choose License Settings. For demonstration purposes, you may opt for a trial version.
   - Obtain a trial key if necessary, by providing contact details.
   - Configure the Admin Account as desired.
5. **Finalize Installation**: Follow through the installation wizard, accept the license agreement, and complete the setup.

After completing these steps, you will have successfully installed Nagios XI and can start monitoring your systems.

Note: The installation process may take around 20 minutes. Patience is required until the "Installation Complete" message appears.




README.md
markdown
Copy code
# How to Install Nagios Monitoring Tool

This guide provides a step-by-step process for installing the latest version of Nagios XI on a fresh Ubuntu environment. Before proceeding with this installation, ensure that you are starting with a blank Ubuntu instance. Pre-installed packages or tools may interfere with the Nagios XI installation process.

## Pre-requisites

- A fresh Ubuntu server instance
- Root or sudo privileges

## Installation Steps

### Step 1: Updating the Packages

Ensure your package lists are up to date to avoid any conflicts during the installation of Nagios XI.

### Step 2: Installing Nagios XI

1. **Login as Root**: It's required to perform the installation as the root user or with root privileges.
2. **Install Nagios XI**: Use the provided command to fetch and execute the Nagios XI installation script.
3. **Navigate to the Installation UI**: After installation, access the Nagios XI user interface through the URL displayed in your terminal.
4. **Complete the Setup Wizard**:
   - Define General System Settings as prompted.
   - Choose License Settings. For demonstration purposes, you may opt for a trial version.
   - Obtain a trial key if necessary, by providing contact details.
   - Configure the Admin Account as desired.
5. **Finalize Installation**: Follow through the installation wizard, accept the license agreement, and complete the setup.

After completing these steps, you will have successfully installed Nagios XI and can start monitoring your systems.

Note: The installation process may take around 20 minutes. Patience is required until the "Installation Complete" message appears.
Installation Script: install_nagios_xi.sh
```
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
```
### Instructions to Execute the Script:

Save the script as install_nagios_xi.sh on your Ubuntu server.

Give execute permission to the script:
```
chmod +x install_nagios_xi.sh
```

- Run the script with root privileges:
```
sudo ./install_nagios_xi.sh
```
Follow the on-screen instructions to complete the Nagios XI installation process.




