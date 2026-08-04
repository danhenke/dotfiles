# Restore .zshrc file
cp "$DIR/zsh/zshrc" "$HOME/.zshrc"

# Restore .zshenv
cp "$DIR/zsh/zshenv" "$HOME/.zshenv"

# Disable system MOTD
touch "$HOME/.hushlogin"

# Apply changes to current zsh environment
source "$HOME/.zshrc"
