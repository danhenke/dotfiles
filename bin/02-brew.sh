# Install/update homebrew command line tool
if ! $(which brew &>/dev/null); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  brew update
fi

# Disable analytics
brew analytics off

# Install binaries and apps from Brewfile
brew bundle --file="$DIR/brew/Brewfile"
