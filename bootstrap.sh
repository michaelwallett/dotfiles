#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
HOMEBREW_INSTALL_PATH="$DIR/homebrew/install.sh"
INSTALL_FILES=$(find -H "$DIR" -maxdepth 2 -name 'install.sh' -not -path "$HOMEBREW_INSTALL_PATH")
DOT_FILES=$(find -H "$DIR" -maxdepth 2 -name '.*' -not -path '.' -not -path '*.git')

. $HOMEBREW_INSTALL_PATH
. $INSTALL_FILES

echo 'Syncing dot files...'
rsync -avh --no-perms $DOT_FILES ~

echo 'All done!'
