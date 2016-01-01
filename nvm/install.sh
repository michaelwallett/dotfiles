#!/bin/sh

echo "$(tput setaf 2)Installing nvm...$(tput sgr 0)"

if [ ! -d "$HOME/.nvm" ]; then
  git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`
fi
