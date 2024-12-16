#!/bin/bash

echo "Starting installation of required packages and setup..."

# Update package list
sudo apt-get update

# Install file managers
sudo apt-get install -y nemo
sudo apt-get install -y nnn
sudo apt-get install -y ranger

# Install directory management tools
sudo apt-get install -y xdg-util
sudo apt-get install -y xdg-user-dirs
sudo apt-get install -y xdg-user-dirs-gtk

# Update user directories
xdg-user-dirs-update
xdg-user-dirs-gtk-update

# Install BSPWM, terminals, and compositor
sudo apt-get install -y bspwm
sudo apt-get install -y kitty
sudo apt-get install -y alacritty
sudo apt-get install -y picom
sudo apt-get install -y apt-xapian-index
sudo apt-get install -y software-properties-gtk
sudo apt-get install -y libgtk3-perl


# Install web browsers
sudo apt-get install -y firefox-esr

# Install Brave browser
curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt-get update
sudo apt-get -y install brave-browser

# Make .config directories
mkdir -p ~/.config/bspwm
mkdir -p ~/.config/kitty
mkdir -p ~/.config/alacritty
mkdir -p ~/.config/nnn
mkdir -p ~/.config/ranger
mkdir -p ~/.config/picom

# Final update
sudo apt-get update

echo "Installation and setup completed successfully."
