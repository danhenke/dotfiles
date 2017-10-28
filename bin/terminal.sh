#!/usr/bin/env bash
set -e

# Only use UTF-8 in Terminal
defaults write com.apple.terminal StringEncodings -array 4

# Enable Secure Keyboard Entry in Terminal.app
# See: https://security.stackexchange.com/a/47786/8918
defaults write com.apple.terminal SecureKeyboardEntry -bool true

# Use a custom theme by default
open Custom.terminal
defaults write com.apple.terminal "Default Window Settings" -string "Custom"
defaults write com.apple.terminal "Startup Window Settings" -string "Custom"
