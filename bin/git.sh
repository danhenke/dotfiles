#!/usr/bin/env bash
set -e

git config user.email "dan@thinkalike.com"
git config user.name "Dan Henke"
git config push.default simple
git config --global credential.helper osxkeychain
