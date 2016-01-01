#!/bin/sh

echo 'Installing nvm...'

if [ ! -d "$HOME/.nvm" ]; then
  git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`
fi
