#!/bin/sh

echo "$(tput setaf 2)Installing Homebrew...$(tput sgr 0)"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BREWFILE_PATH="$DIR/Brewfile"

if [ ! $(which brew) ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew update
brew bundle --file=$BREWFILE_PATH
