ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap homebrew/bundle
brew bundle --file=~/.dotfiles/brew/Brewfile
brew update
brew upgrade
