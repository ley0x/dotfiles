#!/bin/bash

# NVIM
# rm -rf ~/.config/nvim && ln -s ~/.dotfiles/nvim ~/.config/
# mv ~/.config/nvim ~/.config/nvim.bak && ln -s ~/.dotfiles/nvim ~/.config/

path="/home/$USER/.config/nvim"
if [ -e $path ]; then
	mv $path "$path.bak"
else
	echo "Backup not created because file or folder $path doesn't exists"
fi
ln -s $PWD/nvim $path

# ZSH
# rm -f ~/.zshrc && ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
#mv ~/.zshrc ~/.zshrc.bak && ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
path="/home/$USER/.zshrc"
if [ -e $path ]; then
	mv $path "$path.bak"
else
	echo "Backup not created because file or folder $path doesn't exists"
fi
ln -s $PWD/zsh/.zshrc $path

# Alacritty
#rm -f ~/.config/alacritty/alacritty.yml && ln -s ~/.dotfiles/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
#mv ~/.config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml.bak && ln -s ~/.dotfiles/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

path="/home/$USER/.config/alacritty/alacritty.yml"
if [ -e $path ]; then
	mv $path "$path.bak"
else
	echo "Backup not created because file or folder $path doesn't exists"
fi
ln -s $PWD/alacritty/alacritty.yml $path

# TMUX
path="/home/$USER/.tmux.conf"
if [ -e $path ]; then
	mv "$path" "$path.bak"
else
	echo "Backup not created because file or folder $path doesn't exists"
fi
ln -s $PWD/tmux/.tmux.conf $path
