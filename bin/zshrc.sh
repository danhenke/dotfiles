#!/usr/bin/env bash
set -e

# Disable system MOTD
touch ~/.hushlogin

cat << EOF > $HOME/.zshrc
# Tell ls to be colourful
export TERM="xterm-color"
export CLICOLOR="1"
export LSCOLORS="Exfxcxdxbxegedabagacad"

# Tell grep to highlight matches
export GREP_OPTIONS="--color=auto"

# Pretty prompt
export PROMPT="%F{cyan}%n%f@%F{green}%m:%f%B%F{yellow}%/%f%b %# "

# Golang
export PATH="\$PATH:\$(go env GOPATH)/bin"
export GOPROXY="direct"
export GOSUMDB="off"

# Brew
BREW_PREFIX="\$(brew --prefix)"
export PATH="\${BREW_PREFIX}/opt/coreutils/libexec/gnubin:\$PATH"
export PATH="\${BREW_PREFIX}/opt/findutils/libexec/gnubin:\$PATH"
export PATH="\${BREW_PREFIX}/opt/gnu-sed/libexec/gnubin:\$PATH"
export PATH="\${BREW_PREFIX}/opt/grep/libexec/gnubin:\$PATH"
export PATH="\${BREW_PREFIX}/opt/make/libexec/gnubin:\$PATH"

# Aliases
alias ls="ls -GFhl --color=auto"
alias git="hub"
EOF

# Apply changes to current bash environment
source $HOME/.zshrc
