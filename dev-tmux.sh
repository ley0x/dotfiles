#!/bin/zsh
tmux new-session -d 'btop'
tmux new-window 'netflix && up'
tmux -2 attach-session -d
