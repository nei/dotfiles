#!/usr/bin/env bash

# Path
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Utils
PATH="$DOTFILES_DIR/bin:$PATH"

# Symlinks
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/bash/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/bash/.zshrc" ~
ln -sfv "$DOTFILES_DIR/vim/.vimrc" ~

# Claude Code
mkdir -p ~/.claude/plugins
ln -sfv "$DOTFILES_DIR/claude/settings.json" ~/.claude/settings.json
ln -sfv "$DOTFILES_DIR/claude/remote-settings.json" ~/.claude/remote-settings.json
ln -sfv "$DOTFILES_DIR/claude/plugins/blocklist.json" ~/.claude/plugins/blocklist.json
ln -sfv "$DOTFILES_DIR/claude/plugins/known_marketplaces.json" ~/.claude/plugins/known_marketplaces.json
ln -sfv "$DOTFILES_DIR/claude/scripts" ~/.claude/scripts
ln -sfv "$DOTFILES_DIR/claude/skills" ~/.claude/skills

# force read new definitions
source ~/.bash_profile
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

# Package managers & packages
. "$DOTFILES_DIR/brew/install.sh"
. "$DOTFILES_DIR/bash/oh-my-zsh.sh"
. "$DOTFILES_DIR/npm/install.sh"

# Some IOS settings
. "$DOTFILES_DIR/macOS/macosdefaults.sh"
