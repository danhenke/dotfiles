#!/usr/bin/env bash
set -e

# Clone dotfiles repo
git clone git@github.com:danhenke/dotfiles.git

# Run every script in bin dir
export DIR="$(cd $(dirname "$0"); pwd)"
for FILE in "$DIR/bin/"*.sh; do
  source "$FILE"
done

# Cleanup
rm -rf dotfiles
