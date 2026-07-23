# Restore .gitconfig file
cp "$DIR/git/gitconfig" "$HOME/.gitconfig"
cp "$DIR/git/gitignore" "$HOME/.gitignore"

# Restore git user config
git config --global user.name "$(git log -1 --pretty=format:'%an')"
git config --global user.email "$(git log -1 --pretty=format:'%ae')"
git config --global user.signingkey "$(ssh-add -L | grep -e "GitHub$")"

# Authenticate github cli
gh auth login --web --skip-ssh-key --git-protocol ssh --scopes user

# Setup allowed signers
git config --global gpg.ssh.allowedSignersFile "~/.ssh/allowed_signers"
gh api user/emails --jq '.[] | select(.verified == true) | .email' |
while IFS= read -r email; do
  printf '%s %s\n' "$email" "$(git config user.signingkey)"
done >> ~/.ssh/allowed_signers
