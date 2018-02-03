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

# Default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# Alias
alias top=htop
alias xclip="xclip -selection c"

# Customize to your needs...
suspend() {
  systemctl suspend
}

ssh_bangcht() {
  ssh bangcht@188.166.231.145
}

ssh_test_bayo() {
  ssh -p 23171 bayo-ops@test.bayo.vn
}

ssh_production_bookup() {
  ssh -p 23171 bayo-ops@128.199.105.233
}

source /etc/profile.d/autojump.zsh
# Fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH=$PATH:/home/mta/go/bin
export GOPATH=/home/mta/go

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
export PATH=$PATH:/home/mta/.nvm/versions/node/v8.4.0/bin

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

export PATH=$PATH:$HOME/IDEs/clion-2017.2.3/bin
