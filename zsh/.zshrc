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
alias top=htop

# Import config
source ~/.bash_profile

# Zsh autosuggrestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Default editor
export EDITOR=/usr/bin/vim

# Image config for xterm
export TERM=xterm-256color

# Fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
export FZF_DEFAULT_COMMAND='rg --files'

# Mysql
export PATH=$PATH:/usr/local/mysql/bin

# Garmin SDK
export PATH=$PATH:$HOME/.sdk/connectiq-sdk-mac-3.1.3-2019-09-10-ed887158b/bin

export PATH="/usr/local/opt/swig@3/bin:$PATH"
export GOPATH="$HOME/go"

