#
# ~/.bashrc
#

# Default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# Load local environmental variables
source /home/mta/.profile
# [[ $- != *i* ]] && return

alias xclip="xclip -selection c"


# alias for git
gits() {
  git status
}

# some common commands
suspend() {
  systemctl suspend
}

wifi-bayo() {
  sudo netctl start wlp3s0-Bayo
}

wifi-home() {
  sudo netctl start wlp3s0-Huster
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

stop-wifi-bayo() {
  sudo netctl stop wlp3s0-Bayo
}

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

PATH="/usr/local/heroku/bin:$PATH"

export PATH=/usr/local/heroku/bin:/usr/local/heroku/bin:/usr/local/heroku/bin:/usr/local/heroku/bin:/home/mta/.rvm/gems/ruby-2.3.3/bin:/home/mta/.rvm/gems/ruby-2.3.3@global/bin:/home/mta/.rvm/rubies/ruby-2.3.3/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/mta/.rvm/bin:/home/mta/.rvm/bin:/home/mta/.rvm/bin:/home/mta/.rvm/bin:/home/mta/.rvm/bin:/home/mta/.vimpkg/bin

export PATH=$PATH:/opt/java/bin:/opt/java/jre/bin
export JAVA_HOME=${JAVA_HOME:-/opt/java}

export LD_LIBRARY_PATH=/usr/include/igraph
#export LD_PRELOAD=/home/user/libs/igraph/libigraph.so

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
export CLASSPATH=$JAVA_HOME/lib/sa-jdi.jar

export PATH=$PATH:/home/mta/IDES/Gogland-171.4694.35/bin
# Fzf for zsh
#[ -f ~/.fzf.bash ] && source ~/.fzf.bash
