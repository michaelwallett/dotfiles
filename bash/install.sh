#!/bin/sh

echo "$(tput setaf 2)Installing bash...$(tput sgr 0)"

BASH_PATH='/usr/local/bin/bash'

if [ "$SHELL" != "$BASH_PATH" ]; then
  echo $BASH_PATH | sudo tee -a /etc/shells
  chsh -s /usr/local/bin/bash
fi
