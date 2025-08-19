# Ask for the administrator password upfront
sudo -v

# Refresh existing `sudo` timer until script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
