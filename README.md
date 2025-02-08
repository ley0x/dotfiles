# Dotfiles (ley0x)

## Prerequisites

- Install Ansible
```bash
git clone https://github.com/ley0x/dotfiles.git
cd dotfiles
```

- Install `yay` AUR helper
```bash
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```        

    
## Ansible

```bash
ansible-galaxy role install -r requirements.yaml -p ./roles
ansible-galaxy collection install -r requirements.yaml --force
```

- Create an ansible role :
```bash
ansible-galaxy init --init-path ./roles <role>
```

- Install packages and dotfiles :
```bash
ansible-playbook --ask-become-pass playbooks/main.yaml
```
