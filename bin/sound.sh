#!/usr/bin/env bash
set -e

# Enable volume change feedback
defaults write NSGlobalDomain com.apple.sound.beep.feedback -int 1

# Increase sound quality for Bluetooth headphones/headsets
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40
