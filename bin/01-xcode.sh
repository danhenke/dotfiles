if [ ! -d "/Library/Developer/CommandLineTools" ]; then
  xcode-select --install

  echo "Waiting for Xcode Command Line Tools to be installed..."

  while [ ! -d "/Library/Developer/CommandLineTools" ]; do
    sleep 1
  done

  echo "Xcode Command Line Tools installed successfully."
fi
