#!/usr/bin/env bash
set -e

if [ ! -e "$HOME/.ssh/id_rsa" ]; then
  op get document "SSH Private Key" > "$HOME/.ssh/id_rsa"
  chmod 600 "$HOME/.ssh/id_rsa"
fi

if [ ! -e "$HOME/.ssh/id_rsa.pub" ]; then
    ssh-keygen -yf "$HOME/.ssh/id_rsa" > "$HOME/.ssh/id_rsa.pub"
fi
