export ZSH="/usr/share/oh-my-zsh"

ZSH_THEME="xiong-chiamiov-plus"


# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"
# fpath+=($HOME/.zsh/pure)
# autoload -U promptinit; promptinit
# prompt pure

plugins=(zsh-bat git fzf docker dotenv archlinux zsh-autosuggestions zsh-syntax-highlighting sudo jsontools)

source $ZSH/oh-my-zsh.sh

alias zshconfig="source ~/.zshrc"

zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes

bindkey -e                                        # emacs key bindings
bindkey ' ' magic-space                           # do history expansion on space
bindkey '^U' backward-kill-line                   # ctrl + U
bindkey '^[[3;5~' kill-word                       # ctrl + Supr
bindkey '^[[3~' delete-char                       # delete
bindkey '^[[1;5C' forward-word                    # ctrl + ->
bindkey '^[[1;5D' backward-word                   # ctrl + <-
bindkey '^[[5~' beginning-of-buffer-or-history    # page up
bindkey '^[[6~' end-of-buffer-or-history          # page down
bindkey '^[[H' beginning-of-line                  # home
bindkey '^[[F' end-of-line                        # end
bindkey '^[[Z' undo                               # shift + tab undo last action

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=2000
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
#setopt share_history         # share command history data

alias history="history 0"

if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='diff --color=auto'
alias ip='ip --color=auto'

alias ll='ls -l'
alias la='ls -la'
alias l='ls -lah'


alias docker-compose="docker compose"
alias npm="pnpm"

# alias zshconfig="nvim ~/.dotfiles/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias up="docker compose up"
alias run="docker compose run"
alias n="nvim"

alias data="cd /run/media/leyo/DATA/"
alias leyo="cd /run/media/leyo/LEYO/"
alias netflix="cd /opt/netflix/"
alias homelab="cd ~/Documents/homelab/"
alias sysreptor="cd ~/Documents/sysreptor/sysreptor/deploy/"

alias dotfiles="cd ~/.dotfiles/"
alias dev="cd ~/Documents/Dev/"
alias cyber="cd ~/Documents/Cyber/"

alias gitui="gitui -t ~/.config/gitui/latte.ron"

# Alias updates
alias update-arch='yay && flatpak update'
alias clean-arch='yay -Sc && yay -Yc && flatpak remove --unused'
alias update-mirrors='sudo reflector --verbose --score 100 --latest 20 --fastest 5 --sort rate --save /etc/pacman.d/mirrorlist '
alias fix-key='sudo rm /var/lib/pacman/sync/* && sudo rm -rf /etc/pacman.d/gnupg/* && sudo pacman-key --init && sudo pacman-key --populate && sudo pacman -Sy --noconfirm archlinux-keyring && sudo pacman --noconfirm -Su'
alias arch-autoremove='sudo pacman -Rns $(pacman -Qtdq)'

alias mechvibes='mechvibes --in-process-gpu &> /dev/null &'
alias venv='source /opt/venv/bin/activate'

# exegol
alias workspace='cd ~/.exegol/workspaces/'

#Displaying iptables information the easy way :)
alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers' #this will display all lines of your current iptables
alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers' #this will display all your INCOMING rules in iptables
alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers' #this will display all your OUTGOING rules in iptables

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Rust
# source "$HOME/.cargo/env"

# yarn
# export PATH=$HOME/.yarn/bin:$PATH

# export PATH=$HOME/.local/bin:$PATH

# flyctl
export FLYCTL_INSTALL="/home/leyo/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

export PATH="$PATH:$HOME/bin"
export PATH="$HOME/.local/bin:$PATH"

# pnpm
export PNPM_HOME="/home/leyo/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
#

export VIRTUAL_ENV_DISABLE_PROMPT=1
if [ -e "/opt/venv" ]; then
  source /opt/venv/bin/activate
fi

# Fish-like syntax highlighting and autosuggestions
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Use history substring search
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# pkgfile "command not found" handler
source /usr/share/doc/pkgfile/command-not-found.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export FZF_BASE=/usr/share/fzf

