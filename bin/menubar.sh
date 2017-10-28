#!/usr/bin/env bash
set -e

# Show battery percentage remaining
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# Show date & AM/PM time in the clock
defaults write com.apple.menuextra.clock DateFormat -string "EEE d MMM h:mm a"
