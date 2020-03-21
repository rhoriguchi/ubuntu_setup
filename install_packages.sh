#!/usr/bin/env bash

set -ex

# Snagit

######################### Generic Apt packages #########################

sudo apt update && sudo apt upgrade -y

sudo apt update && sudo apt install -y \
  filezilla \
  firefox \
  git \
  htop \
  k4dirstat \
  libreoffice \
  make \
  neofetch \
  steam \
  unzip \
  vlc \
  wget \
  zsh

######################### Snap packages #########################

sudo apt update && sudo apt install -y \
  snapd \
  snapd-xdg-open

sudo snap install leagueoflegends --edge --devmode
sudo snap refresh --candidate wine-platform-4-staging
sudo snap refresh --candidate wine-platform-runtime

######################### Java #########################

sudo apt purge -y \
  openjdk-8-jre \
  openjdk-8-jre-headless

sudo apt update && sudo apt install -y \
  maven \
  openjdk-14-jdk

######################### Node #########################

sudo apt update && sudo apt install -y npm
sudo npm cache clean -f
sudo npm install -g n
sudo n stable
sudo npm install -g npm

sudo npm install -g \
  prettier \
  typescript

######################### Python #########################

sudo apt update && sudo apt install -y \
  python3 \
  python3-pip \
  mypy \
  pylint \
  virtualenv

######################### Stack #########################

# TODO fix
# sudo apt update && sudo apt install -y haskell-stack

# stack upgrade --force-download
# stack install \
#   hindent \
#   stylish-haskell

######################### Docker and Docker Compose #########################

sudo apt remove -y \
  docker \
  docker-engine \
  docker.io \
  containerd \
  runc

sudo apt update && sudo apt install -y \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg-agent \
  software-properties-common

curl -SL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=$(dpkg --print-architecture)] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update && sudo apt install -y \
  docker-ce \
  docker-ce-cli \
  containerd.io

######################### Docker Compose #########################

sudo curl -SL "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

######################### Android development #########################

sudo apt update && sudo apt install -y adb

######################### qBittorrent #########################

sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y
sudo apt update && sudo apt install -y qbittorrent

######################### GIMP #########################

sudo add-apt-repository ppa:otto-kesselgulasch/gimp -y
sudo apt update && sudo apt install -y gimp

######################### Spotify #########################

echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
curl -SL https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
sudo apt update && sudo apt install -y spotify-client

######################### Chrome #########################

echo "deb [arch=$(dpkg --print-architecture)] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list
curl -SL https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt update && sudo apt install -y google-chrome-stable

######################### QGIS #########################

echo "deb http://qgis.org/debian $(lsb_release -cs) main
deb-src http://qgis.org/debian $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/qgis.list
curl -SL https://qgis.org/downloads/qgis-2019.gpg.key | sudo apt-key add -
sudo apt update && sudo apt install -y \
  python-matplotlib \
  python-scipy \
  qgis

qgis --nologo --code "$(pwd)/scripts/pycharmqgis.py"
sudo mv pycharmqgis.sh /usr/local/pycharmqgis.sh

sudo cp icons/pycharmqgis.svg /usr/share/icons/pycharmqgis.svg

echo "[Desktop Entry]
Name=PyCharm Professional with QGIS
Exec=sh /usr/local/pycharmqgis.sh
StartupNotify=true
Terminal=false
Type=Application
Icon=/usr/share/icons/pycharmqgis.svg" | sudo tee /usr/share/applications/pyCharmQgis.desktop

######################### Resilio Sync #########################

echo "deb http://linux-packages.resilio.com/resilio-sync/deb resilio-sync non-free" | sudo tee /etc/apt/sources.list.d/resilio-sync.list
curl -SL http://linux-packages.resilio.com/resilio-sync/key.asc | sudo apt-key add -
sudo apt update && sudo apt install -y resilio-sync
sudo systemctl enable --now resilio-sync

######################### Visual Studio Code #########################

echo "deb [arch=$(dpkg --print-architecture)] http://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
curl -SL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo apt update && sudo apt install -y \
  apt-transport-https \
  code

######################### TeamViewer #########################

echo "deb http://linux.teamviewer.com/deb stable main" | sudo tee /etc/apt/sources.list.d/teamviewer.list
curl -SL https://download.teamviewer.com/download/linux/signature/TeamViewer2017.asc | sudo apt-key add -
sudo apt update && sudo apt install -y teamviewer

######################### NordVPN #########################

echo "deb https://repo.nordvpn.com/deb/nordvpn/debian stable main" | sudo tee /etc/apt/sources.list.d/nordvpn.list
curl -SL https://repo.nordvpn.com/gpg/nordvpn_public.asc | sudo apt-key add -
sudo apt update && sudo apt install -y nordvpn

nordvpn set cybersec on

sudo cp icons/nordvpn.svg /usr/share/icons/nordvpn.svg

echo "[Desktop Entry]
Name=NordVPN connect
Exec=bash -c 'nordvpn connect'
StartupNotify=true
Terminal=true
Type=Application
Icon=/usr/share/icons/nordvpn.svg" | sudo tee /usr/share/applications/nord-vpn-connect.desktop

echo "[Desktop Entry]
Name=NordVPN disconnect
Exec=bash -c 'nordvpn disconnect'
StartupNotify=true
Terminal=true
Type=Application
Icon=/usr/share/icons/nordvpn.svg" | sudo tee /usr/share/applications/nord-vpn-disconnect.desktop

######################### Mega #########################

echo "deb https://mega.nz/linux/MEGAsync/xUbuntu_$(lsb_release -rs)/ ./" | sudo tee /etc/apt/sources.list.d/megasync.list
echo "-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: GnuPG v2

mI0EVj3AgQEEAO2XyJgpvE5HDRVsggcrMhf5+KpQepl7m7OyrPSgxLi72Wuy5GWp
hO64BX1UzmdUirIEOc13YxdeuhwJ3YP0wnKUyUrdWA0r2HjOz555vN6ldrPlSCBI
RxKBWRMQaR4cwNKQ8V4xV9tVdPGgrQ9L/4H3fM9fYqCwEMKBxxLZsF3PABEBAAG0
IE1lZ2FMaW1pdGVkIDxzdXBwb3J0QG1lZ2EuY28ubno+iL8EEwECACkFAlY9wIEC
GwMFCRLMAwAHCwkIBwMCAQYVCAIJCgsEFgIDAQIeAQIXgAAKCRADw606fwaOXfOS
A/998rh6f0wsrHmX2LTw2qmrWzwPj4m+vp0m3w5swPZw1x4qSNsmNsIXX8J0ZcSE
qymOwHZ0B9imBS3iz+U496NSfPNWABbIBnUAu8zq0IR28Q9pUcLe5MWFsw9NO+w2
5dByoN9JKeUftZt1x76NHn5wmxB9fv7WVlCnZJ+T16+nh7iNBFY9wIEBBADHpopM
oXNkrGZLI6Ok1F5N7+bSgiyZwkvBMAqCkPawUgwJztFKGf8F/sSbydsKRC2aQcuJ
eOj0ZPUtJ80+o3w8MsHRtZDSxDIxqqiHeupoDRI3Be9S544vI5/UmiiygTuhmNTT
NWgStoZz7hEK4IsELAG1EFodIMtBSkptDL92HwARAQABiKUEGAECAA8FAlY9wIEC
GwwFCRLMAwAACgkQA8OtOn8Gjl3HlAQAoOckF5JBJWekmlX+k2RYwtgfszk31Gq+
Jjiho4rUEW8c1EUPvK8v1jRGwjYED3ihJ6510eblYFPl+6k91OWlScnxuVVAmSn4
35RW3vR+nYUvf3s8rctbw97gJJZAA7p5oAowTux3oHotKSYhhxKcz15goMXzSb5G
/h7fJRhMnw4=
=fp/e
-----END PGP PUBLIC KEY BLOCK-----" | sudo apt-key add -
sudo apt update && sudo apt install -y megasync

######################### Manual downloads #########################

mkdir -p /tmp/setup

######################### Discord #########################

wget -O /tmp/setup/discord.deb https://dl.discordapp.net/apps/linux/0.0.10/discord-0.0.10.deb
sudo dpkg -i /tmp/setup/discord.deb
sudo apt update && sudo apt install -y -f

######################### Gotop #########################

sudo rm -rf /tmp/setup/gotop
git clone --depth 1 https://github.com/cjbassi/gotop /tmp/setup/gotop
pushd /usr/local/bin && sudo bash /tmp/setup/gotop/scripts/download.sh && popd
sudo chmod +x /usr/local/bin/gotop

######################### GitKraken #########################

wget -O /tmp/setup/gitkraken.deb https://release.axocdn.com/linux/gitkraken-$(dpkg --print-architecture).deb
sudo dpkg -i /tmp/setup/gitkraken.deb
sudo apt update && sudo apt install -y -f

######################### JetBrains Toolbox #########################

wget -O /tmp/setup/jetbrains-toolbox.tar.gz https://download-cf.jetbrains.com/toolbox/jetbrains-toolbox-1.16.6067.tar.gz
tar -C /tmp/setup -xzf /tmp/setup/jetbrains-toolbox.tar.gz
sudo rm -rf /usr/local/jetbrains-toolbox
sudo mv /tmp/setup/jetbrains-toolbox-1.16.6067 /usr/local/jetbrains-toolbox
/usr/local/jetbrains-toolbox/jetbrains-toolbox

######################### Postman #########################

wget -O /tmp/setup/postman.tar.gz https://dl.pstmn.io/download/latest/linux64
tar -C /tmp/setup -xzf /tmp/setup/postman.tar.gz
sudo rm -rf /usr/local/postman
sudo mv /tmp/setup/Postman /usr/local/postman

echo "[Desktop Entry]
Name=Postman
Exec=/usr/local/postman/Postman
StartupNotify=true
Terminal=false
Type=Application
Icon=/usr/local/postman/app/resources/app/assets/icon.png" | sudo tee /usr/share/applications/postman.desktop

######################### Shift #########################

wget -O /tmp/setup/shift.zip https://update.tryshift.com/download/version/4.0.2/linux_32
unzip -q /tmp/setup/shift.zip -d /tmp/setup/shift
sudo rm -rf /usr/local/shift
sudo mv /tmp/setup/shift/Shift-linux-x64 /usr/local/shift
/usr/local/shift/Shift &

######################### belenaEtcher #########################

wget -O /tmp/setup/etcher.zip https://github.com/balena-io/etcher/releases/download/v1.5.79/balena-etcher-electron-1.5.79-linux-x64.zip
unzip /tmp/setup/etcher.zip -d /tmp/setup/etcher
sudo mv /tmp/setup/etcher/balenaEtcher-1.5.79-x64.AppImage /usr/local/etcher.AppImage
sudo chmod +x /usr/local/etcher.AppImage

sudo cp icons/etcher.ico /usr/share/icons/etcher.ico

echo "[Desktop Entry]
Name=belenaEtcher
Exec=/usr/local/etcher.AppImage
StartupNotify=true
Terminal=false
Type=Application
Icon=/usr/share/icons/etcher.ico" | sudo tee /usr/share/applications/etcher.desktop

######################### Clean up manual downloads #########################

sudo rm -rf /tmp/setup
sudo apt update && sudo apt install -y -f
sudo apt autoremove -y
