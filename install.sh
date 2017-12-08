#!/usr/bin/env bash

# Path
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Utils
PATH="$DOTFILES_DIR/bin:$PATH"

# Install some useful stuff
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Symlinks
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/bash/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/bash/.zshrc" ~

# Package managers & packages
. "$DOTFILES_DIR/brew/install.sh"
. "$DOTFILES_DIR/bash/oh-my-zsh.sh"
. "$DOTFILES_DIR/npm/install.sh"

# Some IOS settings
. "$DOTFILES_DIR/macOS/macosdefaults.sh"