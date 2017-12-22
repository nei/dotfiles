#make Casks install to sensible and predictable locations
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Infinite history
export HISTSIZE=""
# Avoid duplicates on history
export HISTCONTROL=ignoredups:erasedups  
# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.dotfiles/bash/.{aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
