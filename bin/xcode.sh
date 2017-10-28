#!/usr/bin/env bash
set -e

# Install Xcode command line tools
if ! $(xcode-select -p &>/dev/null); then
  xcode-select --install &>/dev/null
  # Wait until the Xcode Command Line Tools are installed
  until $(xcode-select -p &>/dev/null); do
    sleep 5
  done
fi
