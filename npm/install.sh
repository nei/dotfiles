brew install nvm

# Globally install with npm

packages=(
  get-port-cli
  gtop
  historie
  nodemon
  npm
  nvm
  release-it
  spot
  superstatic
  svgo
  tldr
  underscore-cli
)

npm install -g "${packages[@]}"

mkdir ~/.nvm
export NVM_DIR=~/.nvm

export DOTFILES_BREW_PREFIX_NVM=`brew --prefix nvm`

nvm install 8
nvm alias default 8
