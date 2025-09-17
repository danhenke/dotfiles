# Start screensaver after idle for time (in seconds)
defaults -currentHost write com.apple.screensaver idleTime -int 300

# Require password immediately after returning from screen saver
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Move mouse to bottom right screen corner to start screen saver
defaults write com.apple.dock wvous-br-corner -int 5
defaults write com.apple.dock wvous-br-modifier -int 0

# Move mouse to top left screen corner to disable sreen saver
defaults write com.apple.dock wvous-tl-corner -int 6
defaults write com.apple.dock wvous-tl-modifier -int 0

# Set screen saver to ken burns
defaults -currentHost write com.apple.screensaver moduleDict -dict moduleName iLifeSlideshow path /System/Library/Frameworks/ScreenSaver.framework/Resources/iLifeSlideshows.saver type -int 0
defaults -currentHost write com.apple.ScreenSaverPhotoChooser LastViewedPhotoPath ""
defaults -currentHost write com.apple.ScreenSaverPhotoChooser SelectedFolderPath "/Library/Screen Savers/Default Collections/2-Aerial"
defaults -currentHost write com.apple.ScreenSaverPhotoChooser SelectedSource -int 3
defaults -currentHost write com.apple.ScreenSaverPhotoChooser ShufflesPhotos -bool true
defaults -currentHost write com.apple.ScreenSaver.iLifeSlideShows styleKey KenBurns
