#!/usr/bin/env zsh

# Rename the first window and start nvim with telescope
tmux rename-window 'Editor'
tmux send-keys 'nvim' C-m

# Create a new window for lazygit
if [[ -d ".git" ]]; then
	tmux new-window -n 'Git'
	tmux send-keys 'lazygit' C-m
fi

# Create an empty window
tmux new-window

# select window
tmux select-window -t 1
