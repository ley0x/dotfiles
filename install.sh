#!/bin/bash

function create_symlink() {
  symlink_path=$1
  dotfiles_path=$2

  if [ -e $symlink_path ]; then
    mv $symlink_path "$symlink_path.bak"
    echo "Backup created for $symlink_path"
  else
    echo "Backup not created because file or folder $symlink_path doesn't exists"
  fi
  ln -s $dotfiles_path $symlink_path 
}

create_symlink "/home/$USER/.zsh_aliases" "$PWD/.zsh_aliases"
# create_symlink "/home/$USER/.config/alacritty" "$PWD/.config/alacritty"
# create_symlink "/home/$USER/.config/btop" "$PWD/.config/btop"
# create_symlink "/home/$USER/.config/gitui" "$PWD/.config/gitui"
# #create_symlink "/home/$USER/.config/nvim" "$PWD/.config/nvim"
# create_symlink "/home/$USER/.config/lvim" "$PWD/.config/lvim"
# # create_symlink "/home/$USER/.config/neofetch" "$PWD/.config/neofetch"



# create_symlink "/home/$USER/.zshrc" "$PWD/.zshrc"
# create_symlink "/home/$USER/.tmux.conf" "$PWD/.tmux.conf"

#create_symlink "/home/$USER/.profile" "$PWD/.profile"
# create_symlink "/home/$USER/.config/i3" "$PWD/.config/i3/"
# create_symlink "/home/$USER/.config/polybar" "$PWD/.config/polybar"
# create_symlink "/home/$USER/.config/ranger" "$PWD/.config/ranger"
# create_symlink "/home/$USER/.config/rofi" "$PWD/.config/rofi"
