ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap Goles/battery
brew tap ravenac95/sudolikeaboss

brew update
brew upgrade

# Install packages

apps=(
  battery
  git
  git-extras
  git-lfs
  python
  ssh-copy-id
  wget
  wifi-password
  sudolikeaboss
)

brew install "${apps[@]}"