#!/bin/bash

echo "Starting Polybar installation and setup..."

# Update and install necessary packages
sudo apt-get update
sudo apt-get install -y polybar

# Create directories
mkdir -p ~/.config/polybar
mkdir -p ~/.config/polybar/top
mkdir -p ~/.config/polybar/bottom
touch ~/.config/polybar/top/top.sh
touch ~/.config/polybar/bottom/bottom.sh

# Make the launch scripts executable
chmod +x ~/.config/polybar/top/top.sh
chmod +x ~/.config/polybar/bottom/bottom.sh

echo "Polybar installation and setup completed."
