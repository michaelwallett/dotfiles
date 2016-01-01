#!/bin/sh

echo 'Installing bash...'

BASH_PATH='/usr/local/bin/bash'

if [[ "$SHELL" != "$BASH_PATH" ]]
then
  echo $BASH_PATH | sudo tee -a /etc/shells
  chsh -s /usr/local/bin/bash
fi
