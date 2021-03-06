#!/usr/bin/env bash

set -ex

######################### General #########################

gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface clock-show-seconds true
gsettings set org.gnome.desktop.interface clock-show-weekday true
gsettings set org.gnome.desktop.interface show-battery-percentage true

######################### Background #########################

mkdir -p ~/Pictures/Wallpapers
cp wallpaper/image.jpg ~/Pictures/Wallpapers/image.jpg
gsettings set org.gnome.desktop.background picture-uri "file:$(eval echo '~')/Pictures/Wallpapers/image.jpg"

######################### Icon Style #########################

sudo add-apt-repository ppa:papirus/papirus -y
sudo apt update && sudo apt install papirus-icon-theme -y

gsettings set org.gnome.desktop.interface icon-theme 'Papirus'

######################### GNOME Extension - Desktop Icons #########################

gsettings set org.gnome.shell.extensions.desktop-icons show-home false
gsettings set org.gnome.shell.extensions.desktop-icons show-mount false
gsettings set org.gnome.shell.extensions.desktop-icons show-trash false

######################### GNOME Extension - Dash #########################

gsettings set org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-1 '[]'
gsettings set org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-10 '[]'
gsettings set org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-2 '[]'
gsettings set org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-3 '[]'
gsettings set org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-4 '[]'
gsettings set org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-5 '[]'
gsettings set org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-6 '[]'
gsettings set org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-7 '[]'
gsettings set org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-8 '[]'
gsettings set org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-9 '[]'
gsettings set org.gnome.shell.extensions.dash-to-dock app-hotkey-1 '[]'
gsettings set org.gnome.shell.extensions.dash-to-dock app-hotkey-10 '[]'
gsettings set org.gnome.shell.extensions.dash-to-dock app-hotkey-2 '[]'
gsettings set org.gnome.shell.extensions.dash-to-dock app-hotkey-3 '[]'
gsettings set org.gnome.shell.extensions.dash-to-dock app-hotkey-4 '[]'
gsettings set org.gnome.shell.extensions.dash-to-dock app-hotkey-5 '[]'
gsettings set org.gnome.shell.extensions.dash-to-dock app-hotkey-6 '[]'
gsettings set org.gnome.shell.extensions.dash-to-dock app-hotkey-7 '[]'
gsettings set org.gnome.shell.extensions.dash-to-dock app-hotkey-8 '[]'
gsettings set org.gnome.shell.extensions.dash-to-dock app-hotkey-9 '[]'
gsettings set org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-1 '[]'
gsettings set org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-10 '[]'
gsettings set org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-2 '[]'
gsettings set org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-3 '[]'
gsettings set org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-4 '[]'
gsettings set org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-5 '[]'
gsettings set org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-6 '[]'
gsettings set org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-7 '[]'
gsettings set org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-8 '[]'
gsettings set org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-9 '[]'
gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 0.0
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize-or-previews'
gsettings set org.gnome.shell.extensions.dash-to-dock custom-theme-customize-running-dots true
gsettings set org.gnome.shell.extensions.dash-to-dock custom-theme-running-dots-color '#D2D2D2'
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock hotkeys-overlay false
gsettings set org.gnome.shell.extensions.dash-to-dock hotkeys-show-dock false
gsettings set org.gnome.shell.extensions.dash-to-dock multi-monitor true
gsettings set org.gnome.shell.extensions.dash-to-dock running-indicator-style 'DASHES'
gsettings set org.gnome.shell.extensions.dash-to-dock shortcut '[]'
gsettings set org.gnome.shell.extensions.dash-to-dock shortcut-text '[]'
gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top true
gsettings set org.gnome.shell.extensions.dash-to-dock show-favorites false
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false

######################### GNOME Extension - Caffeine #########################

# TODO does currently not work

workdir="$(mktemp -d)"

mkdir -p ~/.local/share/gnome-shell/extensions
rm -rf ~/.local/share/gnome-shell/extensions/caffeine@patapon.info

# TODO use fixed version
git clone https://github.com/eonpatapon/gnome-shell-extension-caffeine.git "$workdir"
cp -r "$workdir/caffeine@patapon.info" ~/.local/share/gnome-shell/extensions/

sudo cp /home/rhoriguchi/.local/share/gnome-shell/extensions/caffeine@patapon.info/schemas/org.gnome.shell.extensions.caffeine.gschema.xml /usr/share/glib-2.0/schemas
sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

gsettings set org.gnome.shell.extensions.caffeine enable-fullscreen false

######################### GNOME Extension - Unite Shell #########################

# TODO does currently not work

workdir="$(mktemp -d)"

sudo apt update && sudo apt install -y x11-utils

mkdir -p ~/.local/share/gnome-shell/extensions
rm -rf ~/.local/share/gnome-shell/extensions/unite@hardpixel.eu

curl -SL https://github.com/hardpixel/unite-shell/releases/download/v41/unite-shell-v41.zip -o "$workdir/unite-shell.zip"
unzip -o "$workdir/unite-shell.zip" -d ~/.local/share/gnome-shell/extensions

sudo cp /home/rhoriguchi/.local/share/gnome-shell/extensions/unite@hardpixel.eu/schemas/org.gnome.shell.extensions.unite.gschema.xml /usr/share/glib-2.0/schemas
sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

# TODO figur out what is needed
gsettings set org.gnome.shell.extensions.unite extend-left-box false
gsettings set org.gnome.shell.extensions.unite hide-activities-button 'always'
gsettings set org.gnome.shell.extensions.unite hide-aggregate-menu-arrow true
gsettings set org.gnome.shell.extensions.unite hide-app-menu-icon true
gsettings set org.gnome.shell.extensions.unite notifications-position 'center'
gsettings set org.gnome.shell.extensions.unite show-desktop-name false
gsettings set org.gnome.shell.extensions.unite show-window-buttons 'always'
gsettings set org.gnome.shell.extensions.unite show-window-title 'never'

######################### GNOME Terminal #########################

black="#000000"
red="#FF4136"
green="#2ECC40"
yellow="#FFDC00"
blue="#0074D9"
magenta="#B10DC9"
cyan="#7FDBFF"
white="#FFFFFF"
light_black="#8A8A8A"
light_red="#FF8D86"
light_green="#81E08C"
light_yellow="#FFEA66"
light_blue="#66ABE8"
light_magenta="#D06DDE"
light_cyan="#B2E9FF"
light_white="#FFFFFF"

profile="$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d \')"

gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/" background-color '#303030'
gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/" background-transparency-percent 0
gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/" cursor-background-color "$magenta"
gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/" cursor-blink-mode 'on'
gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/" cursor-colors-set true
gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/" cursor-foreground-color "$white"
gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/" foreground-color "$white"
gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/" palette "['$black', '$red', '$green', '$yellow', '$blue', '$magenta', '$cyan', '$white', '$light_black', '$light_red', '$light_green', '$light_yellow', '$light_blue', '$light_magenta', '$light_cyan', '$light_white']"
gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/" use-theme-colors false
