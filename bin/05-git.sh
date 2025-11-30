# Restore .gitconfig file
cp "$DIR/git/gitconfig" "$HOME/.gitconfig"
cp "$DIR/git/gitignore" "$HOME/.gitignore"

# Restore git user config
git config --global user.name "$(git log -1 --pretty=format:'%an')"
git config --global user.email "$(git log -1 --pretty=format:'%ae')"
git config --global user.signingkey "$(ssh-add -L | grep -e "GitHub$")"

# Authenticate github cli
gh auth login --web --skip-ssh-key --git-protocol ssh
