# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Dont show the dock for 1000 seconds
defaults write com.apple.dock autohide-delay -float 1000

# Restart the dock to apply changes
killall Dock
