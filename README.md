# Dotfiles

## Content

This repository contains dotfiles for :
- nvim
- zsh
- tmux
- alacritty
- firefox (librewolf)

- ranger
- neofetch
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
apt install -y neovim zsh tmux xsel
```

```bash
cargo install alacritty
```

## Installing

### ZSH

Install ohmyzsh
```bash
/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
### ZSH plugins

- ZSH Syntax Highlighting :
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

- ZSH Auto suggestions :
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

- [Pure Theme](https://github.com/sindresorhus/pure) :
```bash
mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
```

### Tmux plugins

Install tmp for tmux plugins

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### Neovim

```bash
sudo pacman -S xsel
pip install pynvim
npm i -g neovim
```


### Finally setting up dotfiles

For installing the dotfiles, just execute this commmand in a linux shell :

```bash
chmod +x ./install.sh && ./install.sh
```

And that's it !
