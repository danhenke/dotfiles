# Disable system MOTD
touch ~/.hushlogin

# Generate .zshrc file
cat << EOF > $HOME/.zshrc
# Brew completions
autoload -Uz compinit
compinit

# Starship
eval "$(starship init zsh)"

# zsh-syntax-highlighting
source `brew --prefix`/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zsh-autosuggestions
source `brew --prefix`/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Golang
export PATH="\$PATH:\$(go env GOPATH)/bin"
export GOPROXY="direct"
export GOSUMDB="off"

# include VSCode shell integration
# see https://code.visualstudio.com/docs/terminal/shell-integration
[[ "$TERM_PROGRAM" == "vscode" ]] && source "$(code --locate-shell-integration-path zsh)"

# Where to save history
HISTFILE="$HOME/.history"

# Remember 100k
HISTSIZE=100000
SAVEHIST=100000

# Append instead of overwrite.
setopt APPEND_HISTORY

# Write to the history file immediately, not when the shell exits.
setopt INC_APPEND_HISTORY

# Share history between all sessions.
setopt SHARE_HISTORY

# Expire duplicate entries first when trimming history.
setopt HIST_EXPIRE_DUPS_FIRST

# Don't record an entry that was just recorded again.
setopt HIST_IGNORE_DUPS

# Delete old recorded entry if new entry is a duplicate.
setopt HIST_IGNORE_ALL_DUPS

# Do not display a line previously found.
setopt HIST_FIND_NO_DUPS

# Don't write duplicate entries in the history file.
setopt HIST_SAVE_NO_DUPS

# If I type cd and then cd again, only save the last one
setopt HIST_IGNORE_DUPS

# Even if there are commands in between commands that are the same, still only save the last one
setopt HIST_IGNORE_ALL_DUPS

# Remove superfluous blanks before recording entry.
setopt HIST_REDUCE_BLANKS

# Don't record an entry starting with a space.
setopt HIST_IGNORE_SPACE
setopt HIST_NO_STORE

# When using a hist thing, make a newline show the change before executing it.
setopt HIST_VERIFY

# Save the time and how long a command ran
setopt EXTENDED_HISTORY

# Zoxide
eval "$(zoxide init --cmd cd zsh)"

# fzf
source <(fzf --zsh)

# Aliases
alias ..='cd ..'
alias ...='cd ../..'
alias h='history -i'
alias ls='lsd -GFhl'
alias l='lsd -l'
alias la='lsd -a'
alias lla='lsd -la'
alias lt='lsd --tree'
alias grep='grep --color=auto'
EOF

# Apply changes to current bash environment
source $HOME/.zshrc