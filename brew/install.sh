# Install some useful stuff
if brew ls > /dev/null; then
  echo "Homebrew already installed"
else
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade

# Brewfile
brew tap "caskroom/versions"

# some packages
brew install battery
brew install git-extras
brew install git-lfs
brew install python
brew install ssh-copy-id
brew install wget
brew install htop
brew install awk
brew install lastpass-cli

brew cask install "sublime-text"
brew cask install "google-chrome"
brew cask install "docker-edge"
brew cask install "slack"
brew cask install "spotify"
brew cask install "iterm2-beta"
brew cask install "mysqlworkbench"
brew cask install google-cloud-sdk
