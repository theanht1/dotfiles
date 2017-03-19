#
# ~/.bashrc
#

# Default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# Load local environmental variables
source /home/mta/.profile
# [[ $- != *i* ]] && return

alias subl=sublime_text_3_imfix
alias xclip="xclip -selection c"


# alias for git
gits() {
  git status
}

gpush() {
  git push origin $1
}

gpull() {
  git pull origin $1
}

gitck() {
  git checkout $1
}

gitc() {
  git commit -m $1
}

gitca() {
  git commit -am $1
}

gfet() {
  git fetch origin $1
}
# some common commands
suspend() {
  systemctl suspend
}

wifi-bayo() {
  sudo netctl start wlp3s0-Bayo
}

wifi-home() {
  sudo netctl start wlp3s0-TuanVu0408
}

wifi-lenovo() {
  sudo netctl start wlp3s0-Lenovo\ P70-A
}

ethernet() {
  sudo netctl start enp2s0f0-Ethernet
}

stop-ethernet() {
  sudo netctl stop enp2s0f0-Ethernet
}

wifi-hust() {
  sudo netctl start wlp3s0-WIFI-HUST
}

stop-wifi-hust() {
  sudo netctl stop wlp3s0-WIFI-HUST
}


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

PATH="/usr/local/heroku/bin:$PATH"

export PATH=/usr/local/heroku/bin:/usr/local/heroku/bin:/usr/local/heroku/bin:/usr/local/heroku/bin:/home/mta/.rvm/gems/ruby-2.3.3/bin:/home/mta/.rvm/gems/ruby-2.3.3@global/bin:/home/mta/.rvm/rubies/ruby-2.3.3/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/mta/.rvm/bin:/home/mta/.rvm/bin:/home/mta/.rvm/bin:/home/mta/.rvm/bin:/home/mta/.rvm/bin:/home/mta/.vimpkg/bin
