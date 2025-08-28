# Disable system MOTD
touch ~/.hushlogin

# Generate .zshrc file
cat << EOF > $HOME/.zshrc
# Starship
eval "$(starship init zsh)"

# Golang
export PATH="\$PATH:\$(go env GOPATH)/bin"
export GOPROXY="direct"
export GOSUMDB="off"

# include VSCode shell integration
# see https://code.visualstudio.com/docs/terminal/shell-integration
[[ "$TERM_PROGRAM" == "vscode" ]] && source "$(code --locate-shell-integration-path zsh)"

# Aliases
alias ls="ls -GFhl"
alias grep="grep --color=auto"
EOF

# Apply changes to current bash environment
source $HOME/.zshrc
