# Dotfiles (ley0x)

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
