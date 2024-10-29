# Dotfiles (ley0x)

## Content

### General

This repository contains dotfiles for :
- alacritty
- zsh (oh-my-zsh)
- tmux
- nvim & lvim
- ranger

```bash
apt install -y neovim zsh tmux xsel 
sudo pacman -S wl-clipboard # si on utilise le clipboard de wayland
sudo pacman -S xclip # sinon
```

### i3wm 

- polybar
- rofi
- nitrogen
- picom
- dunst
- xautolock
- maim
- xdotool
- nm-applet
- dex
- feh
- playerctl

```bash
cargo install alacritty
```

## Installing

### ZSH

- Install ohmyzsh
```bash
/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
- ZSH Syntax Highlighting :
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

- ZSH Auto suggestions :
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

- ZSH bat :
```bash
git clone https://github.com/fdellwing/zsh-bat.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-bat
```

### Tmux

Install tmp for tmux plugins

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### Neovim

```bash
pip install pynvim
npm i -g neovim
```

[LunarVim](https://www.lunarvim.org/)


### Finally setting up dotfiles

For installing the dotfiles, just execute this commmand in a linux shell :

```bash
chmod +x ./install.sh && ./install.sh
```
