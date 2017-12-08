brew install nvm

export DOTFILES_BREW_PREFIX_NVM=`brew --prefix nvm`

. "${DOTFILES_DIR}/system/.nvm"

nvm install 8
nvm alias default 8

# Globally install with npm

packages=(
  get-port-cli
  gtop
  historie
  nodemon
  npm
  release-it
  spot
  superstatic
  svgo
  tldr
  underscore-cli
)

npm install -g "${packages[@]}"