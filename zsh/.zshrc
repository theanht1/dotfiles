#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

alias top=htop
#alias python=python3
#alias pip=pip3

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
export FZF_DEFAULT_COMMAND='rg --files'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$PATH:/usr/local/mysql/bin
export EDITOR=/usr/bin/vim
export TERM=xterm-256color

# Anaconda
export PATH=$PATH:/anaconda3/bin
#source ~/.bash_profile

# Google application credentials
export GOOGLE_APPLICATION_CREDENTIALS="/Users/theanht1/personal/credentials/google_cloud/STT demo-be0b20935225.json"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/theanht1/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/theanht1/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/theanht1/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/theanht1/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
