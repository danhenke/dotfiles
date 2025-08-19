# Disable system MOTD
touch ~/.hushlogin

# Generate .zshrc file
cat << EOF > $HOME/.zshrc
# Pretty prompt
export PROMPT="%F{cyan}%n%f@%F{green}%m:%f%B%F{yellow}%~%f%b %# "

# Golang
export PATH="\$PATH:\$(go env GOPATH)/bin"
export GOPROXY="direct"
export GOSUMDB="off"

# Aliases
alias ls="ls -GFhl"
alias grep="grep --color=auto"
EOF

# Apply changes to current bash environment
source $HOME/.zshrc
