# Enable tap to click for this user
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true

# Enable tap to click for the login screen
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Enable 3-finger drag - doesn't work??
defaults -currentHost write -globalDomain com.apple.mouse.tapBehavior -int 1
defaults -currentHost write -globalDomain com.apple.trackpad.threeFingerDragGesture -int 1
defaults write com.apple.AppleMultitouchTrackpad Dragging -int 0
defaults write com.apple.AppleMultitouchTrackpad DragLock -int 0
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad DragLock -int 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Dragging -int 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -int 1
