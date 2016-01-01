#!/bin/sh

echo "$(tput setaf 2)Installing iTerm settings...$(tput sgr 0)"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ITERM_SETTINGS_PATH="$DIR/com.googlecode.iterm2.plist"

rsync -avh --no-perms $ITERM_SETTINGS_PATH ~/Library/Preferences
