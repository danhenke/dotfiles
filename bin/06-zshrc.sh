# Restore .zshrc file
cp "$DIR/zsh/zshrc" "$HOME/.zshrc"

# Disable system MOTD
touch "$HOME/.hushlogin"

# Apply changes to current zsh environment
source "$HOME/.zshrc"
