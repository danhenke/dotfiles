# https://github.com/catppuccin/bat
BAT="$(bat --config-dir)"

# Restore bat config
mkdir -p "$BAT"
cp "$DIR/bat/config" "$BAT/config"

# Install themes
mkdir -p "$BAT/themes"
wget -qP "$BAT/themes" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Latte.tmTheme
wget -qP "$BAT/themes" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Frappe.tmTheme
wget -qP "$BAT/themes" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Macchiato.tmTheme
wget -qP "$BAT/themes" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Mocha.tmTheme

# Rebuild bat cache
bat cache --build
