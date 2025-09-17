# Restore SSH config
mkdir -p "$HOME/.ssh"
cp "$DIR/ssh/config" "$HOME/.ssh/config"

# If ssh keys are not already added, add them
if ! ssh-add -l | grep -e "ED25519"; then
  ssh-add --apple-use-keychain "$HOME/Documents/ssh/id_ed25519"
fi
