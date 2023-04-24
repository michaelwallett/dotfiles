export PATH=/opt/homebrew/bin:$PATH

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit
  compinit
  zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
fi

export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"

export EDITOR=vim

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

. $HOME/.aliases