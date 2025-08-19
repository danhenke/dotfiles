mkdir -p "$HOME/.ssh"

# Restore private key
if [ ! -e "$HOME/.ssh/id_ed25519" ]; then
  hdiutil attach ~/Documents/sshkeys.dmg
  cp "/Volumes/sshkeys/id_ed25519" "$HOME/.ssh/id_ed25519"
  chmod 600 "$HOME/.ssh/id_ed25519"
  hdiutil detach /Volumes/sshkeys
fi

# Regenerate public key
if [ ! -e "$HOME/.ssh/id_rsa.pub" ]; then
  ssh-keygen -yf "$HOME/.ssh/id_ed25519" > "$HOME/.ssh/id_ed25519.pub"
fi

# Regenerate SSH config
if [ ! -e "$HOME/.ssh/config" ]; then
cat << EOF > $HOME/.ssh/config
Host *
UseKeychain yes
AddKeysToAgent yes
IdentityFile ~/.ssh/id_ed25519
EOF
fi
