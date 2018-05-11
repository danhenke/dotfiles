#!/usr/bin/env bash
set -e

# Disable system MOTD
touch ~/.hushlogin

cat << EOF > $HOME/.bash_profile
# Add go binaries to path
export PATH="$PATH:$HOME/go/bin"

# Tell ls to be colourful
export TERM="xterm-color"
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
alias ls='ls -GFhl'

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# Pretty prompt
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\] \$ "

# Add colour to man
man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		LESS_TERMCAP_md=$(printf "\e[1;31m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
			man "$@"
}
EOF

# Apply changes to current bash environment
source $HOME/.bash_profile
