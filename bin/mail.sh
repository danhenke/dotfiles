#!/usr/bin/env bash
set -e

# Disable threaded mode
defaults write com.apple.mail DefaultViewerState -dict-add "DisplayInThreadedMode" -string "no"

# Disable favourites bar
defaults write com.apple.mail DefaultViewerState -dict-add "FavoritesBarVisible" -int 0
