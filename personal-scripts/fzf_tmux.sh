#!/usr/bin/env bash

# use first argument as selection if script ran directly
if [[ $# -eq 1 ]]; then
    selection=$1
else
    selection=$(fd --type d --exclude .git ~/Projects/ ~/college/ ~/Tutorials/ ~/college/100-Days-of-Code/ | fzf)
fi

if [[ -z $selection ]]; then
    exit 0
fi

# strip clutter from name and replace . with _
selected_name=$(basename "$selection" | tr . _)
# process grep to get process ids
tmux_running=$(pgrep tmux)


if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
    tmux new-session -s $selected_name -c $selection
    exit 0
fi

if ! tmux has-session -t=$selected_name 2> /dev/null; then
    tmux new-session -ds $selected_name -c $selection
fi

tmux switch-client -t $selected_name
