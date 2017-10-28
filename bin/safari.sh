#!/usr/bin/env bash
set -e

# Show the tab bar by default
defaults write com.apple.Safari AlwaysShowTabBar -boolean true

# Show the status bar by default
defaults write com.apple.Safari ShowOverlayStatusBar -boolean true

# Show the bookmarks bar by default
defaults write com.apple.Safari "ShowFavoritesBar-v2" -bool true

# Disable the thumbnail cache for History and Top Sites
defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2

# Enable the debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Make Safari’s search banners default to Contains instead of Starts With
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false

# Enable the Develop menu and the Web Inspector in Safari
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write -g WebKitDeveloperExtras -bool true

# Add a context menu item for showing the Web Inspector in web views
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Privacy: don’t send search queries to Apple
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# Show the full URL in the address bar (note: this still hides the scheme)
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

# Set Safari’s home page to `about:blank` for faster loading
defaults write com.apple.Safari HomePage -string "about:blank"

# Always open new windows to a blank page
defaults write com.apple.Safari NewWindowBehavior -int 1

# Always open new tabs to a blank page
defaults write com.apple.Safari NewTabBehavior -int 1

# Always open previous tabs on start
defaults write com.apple.Safari AlwaysRestoreSessionAtLaunch -bool true

# Prevent Safari from opening ‘safe’ files automatically after downloading
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# Ask websites not to track me
defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true
