#!/bin/bash

sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

sudo pacman -S ansible


cd ~
git clone https://github.com/ley0x/dotfiles.git
cd dotfiles

ansible-galaxy role install -r requirements.yaml -p ./roles
ansible-galaxy collection install -r requirements.yaml --force
