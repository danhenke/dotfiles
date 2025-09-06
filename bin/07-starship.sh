mkdir -p "$HOME/.config"

# Regenerate SSH config
if [ ! -e "$HOME/.config/starship.toml" ]; then
cat << EOF > $HOME/.config/starship.toml
# Get editor completions based on the config schema
"$schema" = 'https://starship.rs/config-schema.json'

add_newline = false

[hostname]
ssh_only = false
style = 'green'
format = '[$ssh_symbol$hostname]($style)(white):'

[cmd_duration]
disabled = true

[directory]
truncation_length = 5
truncation_symbol = '…/'
style = 'bold yellow'

[line_break]
disabled = true

[username]
style_user = 'cyan'
style_root = 'black bold'
format = '[$user]($style)@'
disabled = false
show_always = true
EOF
fi
