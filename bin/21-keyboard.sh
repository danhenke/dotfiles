# Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Set a key delay until repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Set key repeat rate
defaults write NSGlobalDomain KeyRepeat -int 2
