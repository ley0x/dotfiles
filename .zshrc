export ZSH="/usr/share/oh-my-zsh"

ZSH_THEME=""
fpath+=($HOME/.zsh/pure)

autoload -U promptinit; promptinit
prompt pure

plugins=(git docker dotenv archlinux zsh-autosuggestions zsh-syntax-highlighting sudo jsontools)

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
alias netflix="cd /run/media/leyo/LEYO/Netflix/"

alias dotfiles="cd ~/.dotfiles/"
alias dev="cd ~/Documents/Dev/"
alias cyber="cd ~/Documents/Cyber/"

alias carbyn="cd ~/Documents/Dev/doxxeur/carbyn"
alias doxxeur="cd ~/Documents/Dev/doxxeur/"

alias gitui="gitui -t mocha.ron"

alias u="sudo pacman -Syy && yay -S archlinux-keyring && yay && yay -Sc && sudo pacman -Rns $(pacman -Qdtq)"

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

export THM_HOST="10.11.3.99"

export PATH="$PATH:$HOME/bin"
export PATH="$HOME/.local/bin:$PATH"

# pnpm
export PNPM_HOME="/home/leyo/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end


