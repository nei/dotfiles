#!/usr/bin/env bash

# Path
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Utils
PATH="$DOTFILES_DIR/bin:$PATH"

# Install some useful stuff
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Symlinks
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/configs/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/configs/.zshrc" ~

# Package managers & packages
. "$DOTFILES_DIR/install/brew.sh"
. "$DOTFILES_DIR/install/npm.sh"
. "$DOTFILES_DIR/install/oh-my-zsh.sh"

# Some IOS settings
. "$DOTFILES_DIR/macosdefaults.sh"