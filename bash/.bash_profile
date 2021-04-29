export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
export PATH="$HOME/development/flutter/bin:$PATH"

export EDITOR=vim

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

. $HOME/.aliases

BASH_GIT_PROMPT_PATH="$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"

if [ -f $BASH_GIT_PROMPT_PATH ]; then
    . $BASH_GIT_PROMPT_PATH
fi

BASH_GIT_COMPLETION_PATH="$(brew --prefix)/etc/bash_completion"

if [ -f $BASH_GIT_COMPLETION_PATH ]; then
    . $BASH_GIT_COMPLETION_PATH
fi
