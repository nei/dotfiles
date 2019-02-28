# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Disable smart quotes to avoid issues with pasting invalid chars on terminal
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
