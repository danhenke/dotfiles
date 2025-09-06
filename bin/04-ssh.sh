mkdir -p "$HOME/.ssh"

# Regenerate SSH config
if [ ! -e "$HOME/.ssh/config" ]; then
cat << EOF > $HOME/.ssh/config
Host *
UseKeychain yes
AddKeysToAgent yes
IdentityFile ~/Documents/ssh/id_ed25519
EOF
fi

# If ssh keys are not already added, add them
if ! ssh-add -l | grep -e 'ED25519'; then
  ssh-add --apple-use-keychain ~/Documents/ssh/id_ed25519
fi
