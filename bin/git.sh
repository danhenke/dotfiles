#!/usr/bin/env bash
set -e

git config user.email "dan@thinkalike.com"
git config user.name "Dan Henke"
git config push.default simple
git config --global credential.helper osxkeychain
git config --global pager.log `brew --prefix`/share/git-core/contrib/diff-highlight/diff-highlight
git config --global pager.show `brew --prefix`/share/git-core/contrib/diff-highlight/diff-highlight
git config --global pager.diff `brew --prefix`/share/git-core/contrib/diff-highlight/diff-highlight
