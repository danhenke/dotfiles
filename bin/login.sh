#!/usr/bin/env bash
set -e

# Disable guest logins to this computer
sudo defaults write /Library/Preferences/com.apple.loginwindow GuestEnabled -bool false
sudo defaults write /Library/Preferences/com.apple.AppleFileServer guestAccess -bool false
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server AllowGuestAccess -bool false

# Show shut down etc. buttons
sudo defaults write /Library/Preferences/com.apple.loginwindow PowerOffDisabled -bool false

# Don't show any password hints
sudo defaults write /Library/Preferences/com.apple.loginwindow RetriesUntilHint -int 0
