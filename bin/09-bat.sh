# https://github.com/catppuccin/bat

# Restore bat config
mkdir -p "$(bat --config-dir)"
cp "$DIR/bat/config" "$(bat --config-dir)/config"

# Install themes
mkdir -p "$(bat --config-dir)/themes"
wget -qP "$(bat --config-dir)/themes" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Latte.tmTheme
wget -qP "$(bat --config-dir)/themes" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Frappe.tmTheme
wget -qP "$(bat --config-dir)/themes" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Macchiato.tmTheme
wget -qP "$(bat --config-dir)/themes" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Mocha.tmTheme

# Rebuild bat cache
bat cache --build
