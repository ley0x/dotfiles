#!/bin/bash

if [[ $EUID -eq 0 ]]; then
  echo "Please run as a non-root user"
  exit 1
fi

function install_yay() {
  cd ~
  sudo pacman -S --needed base-devel git
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si
}

function install_ansible() {
  cd ~
  sudo pacman -S --needed ansible
  cd ~/.dotfiles
  ansible-galaxy role install -r requirements.yaml -p ./roles
  ansible-galaxy collection install -r requirements.yaml --force
}


echo "[+] Installing yay"
install_yay
echo "[+] Installing ansible"
install_ansible
