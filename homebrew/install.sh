#!/bin/sh

echo 'Installing Homebrew...'

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BREWFILE_PATH="$DIR/Brewfile"

if test ! $(which brew)
then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew bundle --file=$BREWFILE_PATH
