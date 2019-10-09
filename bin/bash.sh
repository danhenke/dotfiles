#!/usr/bin/env bash
set -e

# Disable system MOTD
touch ~/.hushlogin

cat << EOF > $HOME/.bash_profile
# Tell ls to be colourful
export TERM="xterm-color"
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
alias ls='ls -GFhl'

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# Pretty prompt
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\] \$ "

# Golang
export PATH="$PATH:$(go env GOPATH)/bin"
export GOPROXY=direct
export GOSUMDB=off

# Aliases
alias git=hub
EOF

# Apply changes to current bash environment
source $HOME/.bash_profile
