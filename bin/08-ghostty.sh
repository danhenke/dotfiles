mkdir -p "$HOME/.config/ghostty"

# Regenerate ghostty config
if [ ! -e "$HOME/.config/ghostty/config" ]; then
cat << EOF > $HOME/.config/ghostty/config
theme = Catppuccin Mocha
font-family = JetBrainsMono Nerd Font Mono
background-opacity = 0.85
background-blur-radius = 20
window-padding-x = 5
macos-option-as-alt = true
macos-titlebar-proxy-icon = hidden
macos-titlebar-style = tabs
EOF
fi
