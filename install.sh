#!/usr/bin/env bash
set -e

# Install/update homebrew command line tool
if ! $(which brew &>/dev/null); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  brew update
fi

# Install binaries and apps from Brewfile
brew bundle

# Close any open System Preferences panes
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Refresh existing `sudo` timer until script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Download dotfiles repo
mkdir -p dotfiles
curl -fsSL https://github.com/danhenke/dotfiles/archive/refs/heads/master.zip \
  | tar -xf- -C dotfiles --strip-components 1

# Run every script in bin dir
export DIR="$(cd $(dirname "$0"); pwd)"
for FILE in "dotfiles/bin/"*.sh; do
  source "$FILE"
done

# Cleanup
rm -rf dotfiles
