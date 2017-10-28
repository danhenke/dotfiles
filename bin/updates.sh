#!/usr/bin/env bash
set -e

# Automatically check for updates
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true

# Download newly available updates in the background
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticDownload -bool true

# Install app updates
sudo defaults write /Library/Preferences/com.apple.commerce AutoUpdate -bool true

# Install OSX updates
sudo defaults write /Library/Preferences/com.apple.commerce AutoUpdateRestartRequired -bool true

# Install system data files and security updates
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate ConfigDataInstall -bool true
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate CriticalUpdateInstall -bool true
