#!/bin/sh

echo "$(tput setaf 2)Installing atom packages...$(tput sgr 0)"

apm install node-debugger
apm install sublime-style-column-selection
apm install emmet
apm install javascript-snippets
apm install atom-jade
apm install react