git config --global user.email "$(git log -1 --pretty=format:'%ae')"
git config --global user.name "$(git log -1 --pretty=format:'%an')"

git config --global credential.helper osxkeychain
git config --global alias.l "log --pretty='%C(dim cyan)%h%C(reset) %C(yellow)|%C(reset) %s%C(cyan)%d%C(reset) %C(dim)by %an %ar' --first-parent -20"
git config --global url.git@github.com:.insteadOf https://github.com/
git config --global push.followTags true
git config --global remote.origin.prune true
git config --global pull.ff only

git config --global gpg.format ssh
git config --global user.signingkey "$(ssh-add -L)"
git config --global commit.gpgsign true
git config --global tag.gpgsign true

# https://github.com/dandavison/delta
git config --global core.pager delta
git config --global interactive.diffFilter 'delta --color-only'
git config --global delta.navigate true
git config --global merge.conflictStyle zdiff3

git config --global core.excludesfile '~/.gitignore.global'
cat << EOF > $HOME/.gitignore.global
.DS_Store
EOF
