# Dotfiles (ley0x)

## Prerequisites

Before running the playbook, you need to install `yay` AUR helper, Ansible and clone the dotfiles from github.

The script `init.sh` will handle that for you.
```bash
chmod +x init.sh
./init.sh
```

> Note: Don't run the script as root, it will ask for your password.
    
## Ansible

### Install

- Install packages and dotfiles :
```bash
ansible-playbook --ask-become-pass playbooks/main.yaml
```

> Note: If `bride-utils` wasn't installed before, you need to reboot your system if you want to use docker.

> Note: To install tmux plugins, run `Ctrl+b` then `Shift+i`.

### KDE

- Global theme: `Breeze Dark`
- Colors: `Sweet`
- Night light: `2500K`
- Application style: `Breeze`
- Plasma style: `Breeze`
- Window decoration: `Breeze`
- Icons: `Papirus-Dark`
- Cursor: `Breeze Light` (Size 66)

### Utils

```bash
ansible-galaxy role install -r requirements.yaml -p ./roles
ansible-galaxy collection install -r requirements.yaml --force
```

- Create an ansible role :
```bash
ansible-galaxy init --init-path ./roles <role>
```

