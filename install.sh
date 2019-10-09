#!/usr/bin/env bash
set -e

if [ $# -ne 3 ] || [ $1 == "-h" ]; then
  echo "Usage: $0 [-h] <1p-account-name> <1p-email-address> <1p-account-key>"
  echo
  echo "Example: $0 smith bob@smith.com A3-ABC123-ABC123-ZY987-ZY987-ZY987-ZY987"
	exit 1
fi

# Install/update homebrew command line tool
if ! $(which brew &>/dev/null); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  brew update
fi

# Install binaries and apps from Brewfile
brew bundle

# Start a 1password session and record session for later use
OP_SESSION=$(op signin --output=raw "$1.1password.com" "$2" "$3")
export "OP_SESSION_$1"="$OP_SESSION"

# Close any open System Preferences panes
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Refresh existing `sudo` timer until script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Run every script in bin dir
export DIR="$(cd $(dirname "$0"); pwd)"
for FILE in "$DIR/bin/"*.sh; do
  source "$FILE"
done
