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
