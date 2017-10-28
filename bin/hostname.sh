#!/usr/bin/env bash
set -e

# Set computer name (as done via System Preferences → Sharing)
NAME="DanMBP"
sudo scutil --set ComputerName "$NAME"
sudo scutil --set HostName "$NAME"
sudo scutil --set LocalHostName "$NAME"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$NAME"
