#!/usr/bin/env bash
set -e

# Download dotfiles repo
mkdir -p dotfiles
curl -fsSL https://github.com/danhenke/dotfiles/archive/refs/heads/main.zip \
  | tar -pxf- -C dotfiles --strip-components 1

# Run every script in bin dir
export DIR="$(cd $(dirname "$0"); pwd)"
for FILE in "$DIR/bin/"*.sh; do
  source "$FILE"
done

# Cleanup
rm -rf dotfiles
