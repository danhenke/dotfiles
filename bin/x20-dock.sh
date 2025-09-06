# Automatically hide and show the Dock
defaults write com.apple.dock "autohide" -bool "true"

# Dont show the dock for 1 seconds
defaults write com.apple.dock "autohide-delay" -float "1"

# Show only open applications in the Dock
defaults write com.apple.dock static-only -bool true

# Set the dock icon size
defaults write com.apple.dock tilesize -int 64

# Dont display recent apps in the Dock
defaults write com.apple.dock "show-recents" -bool "false"

# Restart the dock to apply changes
killall Dock
