#!/bin/bash

echo "Starting Rofi installation and setup..."

# Update and install necessary packages
sudo apt-get update
sudo apt-get install -y rofi

# Create Directories
mkdir -p ~/.config/rofi/themes
mkdir -p ~/.config/rofi/scripts

# Rofi Configuration File
cat <<EOL > ~/.config/rofi/config.rasi
configuration {
    modi: "run,drun,window";
    show-icons: true;
    icon-theme: "Obsidian";
    font: "Noto Sans 11";
    sidebar-mode: true;
    application-fallback-icon: "/usr/share/icons/gnome/48x48/emblems/emblem-system.png";

    display-drun: "drun";
    display-run: "run";
    display-window: "windows";
    display-filebrowser: "browser";

    //display-drun: "";
    //display-run: "";
    //display-window: "";
    //display-filebrowser: "";
}

// This line changed for Auto Themes Changer.
@theme "rounded-ozark.rasi"

// These are the available themes.
// @theme "rounded-adobe.rasi"
// @theme "rounded-anolis.rasi"
// @theme "rounded-adwaita.rasi"
// @theme "rounded-adwaita-dark.rasi"
// @theme "rounded-arcadia.rasi"
// @theme "rounded-bright.rasi"
// @theme "rounded-broadwater.rasi"
// @theme "rounded-cobalt.rasi"
// @theme "rounded-con-anolis.rasi"
// @theme "rounded-crimson.rasi"
// @theme "rounded-cube.rasi"
// @theme "rounded-dark-drow.rasi"
// @theme "rounded-dark-earth.rasi"
// @theme "rounded-denim.rasi"
// @theme "rounded-dracula.rasi"
// @theme "rounded-dragon.rasi"
// @theme "rounded-drow.rasi"
// @theme "rounded-earth.rasi"
// @theme "rounded-forge.rasi"
// @theme "rounded-forge-dark.rasi"
// @theme "rounded-glacier.rasi"
// @theme "rounded-glade.rasi"
// @theme "rounded-grey.rasi"
// @theme "rounded-mulberry.rasi"
// @theme "rounded-neon.rasi"
// @theme "rounded-nightshade.rasi"
// @theme "rounded-night-indigo.rasi"
// @theme "rounded-nordic-darker.rasi"
// @theme "rounded-oceanic.rasi"
// @theme "rounded-ozark.rasi"
// @theme "rounded-river.rasi"
// @theme "rounded-slate.rasi"
// @theme "rounded-taupe.rasi"
// @theme "rounded-banana.rasi"
// @theme "rounded-blueberry.rasi"
// @theme "rounded-cherry.rasi"
// @theme "rounded-orange.rasi"
// @theme "rounded-lychee.rasi"
// @theme "rounded-lime.rasi"
// @theme "rounded-blue-dark.rasi"
// @theme "rounded-gray-dark.rasi"
// @theme "rounded-green-dark.rasi"
// @theme "~/.config/rofi/themes/monokai.rasi"
// @theme "~/.config/rofi/themes/spotlight.rasi"
// @theme "~/.config/rofi/themes/win11-list-dark.rasi"
// @theme "~/.config/rofi/themes/win11-list-light.rasi"
// @theme "~/.config/rofi/themes/rounded-orange-dark.rasi"
// @theme "~/.config/rofi/themes/spotlight-dark.rasi"
EOL

# Additional Configuration Files (if needed)
cat <<EOL > ~/.config/rofi/quit.conf
###==============================
### configuration for 'quit' 
###==============================
##
## THEME
    ### antix      : "antiX-modernflux" style colors
    ### comfort    : "MX-Comfort" theme colors    
    ### crunchbang : "Crunchbang" theme colors
    ### darkcrunch : "Crunchbang" inverted colors
    ### gruvbox    : "Gruvbox-Dark" theme colors
    ### mojtamigo  : "Mojtamigo" mxflux    colors
    ### nord       : "Nord" theme colors    
## MODE
    ### std  : logout/lock/suspend/reboot/shutdown
    ### reg  : standard +cancel
    ### ext  : standard +refresh +cancel
    ### max  : standard +refresh +hibernate +cancel
##
###==============================

theme="lilidog-ozark"
mode="reg"
EOL

cat <<EOL > ~/.config/rofi/xresources
configuration {
    display-drun: "";
    display-filebrowser: "";    
    display-run: "";
    display-window: "";
}
EOL

cat <<EOL > ~/.config/rofi/display.rasi
configuration {
    display-drun: "";
    display-filebrowser: "";    
    display-run: "";
    display-window: "";
}
EOL

echo "Rofi installation and setup completed successfully."
