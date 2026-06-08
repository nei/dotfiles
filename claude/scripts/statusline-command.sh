#!/usr/bin/env bash
# Claude Code statusLine command
# Inspired by the agnoster Oh My Zsh theme

input=$(cat)

user=$(whoami)
host=$(hostname -s)
cwd=$(echo "$input" | jq -r '.workspace.current_dir // .cwd // empty')
model=$(echo "$input" | jq -r '.model.display_name // empty')
remaining=$(echo "$input" | jq -r '.context_window.remaining_percentage // empty')

# Git branch (skip optional locks to avoid blocking)
git_branch=""
if [ -n "$cwd" ] && [ -d "$cwd/.git" ] || git -C "${cwd:-$(pwd)}" rev-parse --git-dir > /dev/null 2>&1; then
    git_branch=$(git -C "${cwd:-$(pwd)}" --no-optional-locks symbolic-ref --short HEAD 2>/dev/null)
fi

# Build the output using printf for colour support
# Dim blue for user@host, yellow for path, cyan for git branch, grey for model/context
printf "\033[34m%s@%s\033[0m" "$user" "$host"

if [ -n "$cwd" ]; then
    # Shorten home directory to ~
    short_cwd="${cwd/#$HOME/\~}"
    printf " \033[33m%s\033[0m" "$short_cwd"
fi

if [ -n "$git_branch" ]; then
    printf " \033[36m(%s)\033[0m" "$git_branch"
fi

if [ -n "$model" ]; then
    printf " \033[90m[%s" "$model"
    if [ -n "$remaining" ]; then
        printf " ctx:%s%%" "$(printf '%.0f' "$remaining")"
    fi
    printf "]\033[0m"
fi

printf "\n"
