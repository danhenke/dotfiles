#!/usr/bin/env bash
set -e

# Download dotfiles repo
mkdir -p dotfiles
curl -fsSL https://github.com/danhenke/dotfiles/archive/refs/heads/main.zip \
  | tar -xf- -C dotfiles --strip-components 1

# Run every script in bin dir
for FILE in "dotfiles/bin/"*.sh; do
  source "$FILE"
done

# Cleanup
rm -rf dotfiles
