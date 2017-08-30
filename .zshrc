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
ssh_bangcht() {
  ssh bangcht@188.166.231.145
}

ssh_test_bayo() {
  ssh -p 23171 bayo-ops@test.bayo.vn
}

ssh_production_bookup() {
  ssh -p 23171 bayo-ops@128.199.105.233
}

# .bashrc
source ~/.bashrc
source /etc/profile.d/autojump.zsh
# Fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
export PATH=/usr/local/heroku/bin:/usr/local/heroku/bin:/usr/local/heroku/bin:/usr/local/heroku/bin:/home/mta/.rvm/gems/ruby-2.3.3/bin:/home/mta/.rvm/gems/ruby-2.3.3@global/bin:/home/mta/.rvm/rubies/ruby-2.3.3/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/mta/.rvm/bin:/home/mta/.rvm/bin:/home/mta/.rvm/bin:/home/mta/.rvm/bin:/home/mta/.rvm/bin:/home/mta/.vimpkg/bin

source /usr/share/nvm/init-nvm.sh

export PATH=$PATH:/home/mta/go/bin
export GOPATH=/home/mta/go

#export PATH=$PATH:/home/mta/.nvm/versions/node/v8.3.0/bin
