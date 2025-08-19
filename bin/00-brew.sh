# Install/update homebrew command line tool
if ! $(which brew &>/dev/null); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  brew update
fi

# Install binaries and apps from Brewfile
brew bundle
