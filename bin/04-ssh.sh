# Restore SSH config
install -d -m 700 "$HOME/.ssh"
install -d -m 700 "$HOME/.ssh/config.d"
install -m 600 "$DIR/ssh/config" "$HOME/.ssh/config"
install -m 600 "$DIR/ssh/config.d/"*.conf "$HOME/.ssh/config.d/"

# Ensure SSH keys are loaded in SSH agent
if ! ssh-add -L | grep -qe "GitHub$"; then
  ssh-add --apple-use-keychain "$HOME/Documents/ssh/github_id_ed25519"
fi
