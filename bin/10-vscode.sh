# Restore vscode config
VSCODE="$HOME/Library/Application Support/Code/User"
mkdir -p "$VSCODE"
cp "$DIR/vscode/settings.json" "$VSCODE/settings.json"
