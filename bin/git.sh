#!/usr/bin/env bash
set -e

git config --global user.email "$(git log -n1 --format='%ae')"
git config --global user.name "$(git log -n1 --format='%an')"
git config --global credential.helper osxkeychain
git config --global pager.log `brew --prefix`/share/git-core/contrib/diff-highlight/diff-highlight
git config --global pager.show `brew --prefix`/share/git-core/contrib/diff-highlight/diff-highlight
git config --global pager.diff `brew --prefix`/share/git-core/contrib/diff-highlight/diff-highlight
git config --global alias.l "log --pretty='%C(dim cyan)%h%C(reset) %C(yellow)|%C(reset) %s%C(cyan)%d%C(reset) %C(dim)by %an %ar' --first-parent -20"
git config --global url.git@github.com:.insteadOf https://github.com/
git config --global core.excludesfile '~/.gitignore.global'
git config --global push.followTags true
git config --global remote.origin.prune true

cat << EOF > $HOME/.gitignore.global
.DS_Store
EOF
