#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "Updating package lists..."
sudo apt update

echo "Upgrading installed packages..."
sudo apt upgrade -y

echo "Downloading Docker installation script..."
curl -fsSL https://get.docker.com -o get-docker.sh

echo "Installing Docker..."
sh get-docker.sh

echo "Adding current user to the docker group..."
sudo usermod -aG docker $USER

echo "Docker installation complete."
echo "Please log out and log back in to apply the group changes."
