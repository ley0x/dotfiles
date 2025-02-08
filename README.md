# Dotfiles (ley0x)

## Prerequisites

- Install Ansible
```bash
sudo pacman -S ansible github-cli
gh auth login
git clone https://github.com/ley0x/dotfiles.git
cd dotfiles
```

- Install `yay` AUR helper

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
