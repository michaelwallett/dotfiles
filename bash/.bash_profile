export PATH="/usr/local/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

. $HOME/.aliases

BASH_GIT_PROMPT_PATH="$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"

if [ -f $BASH_GIT_PROMPT_PATH ]; then
    source $BASH_GIT_PROMPT_PATH
fi
