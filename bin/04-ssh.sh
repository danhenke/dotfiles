# Restore SSH config
mkdir -p "$HOME/.ssh"
cp "$DIR/ssh/config" "$HOME/.ssh/config"

# Ensure SSH keys are loaded in SSH agent
if ! ssh-add -L | grep -qe "GitHub$"; then
  ssh-add --apple-use-keychain "$HOME/Documents/ssh/github_id_ed25519"
fi
