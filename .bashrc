#
# ~/.bashrc
#

# If not running interactively, don't do anything

source ".profile"
# [[ $- != *i* ]] && return

# alias for git
gits() {
  git status
}

gitck() {
  git checkout
}

gitcm() {
  git commit -am
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

ethernet() {
  sudo netctl start enp2s0f0-Ethernet
}

# export PS1="\[\033[38;5;12m\][\[$(tput sgr0)\]\[\033[38;5;10m\]\u\[$(tput sgr0)\]\[\033[38;5;12m\]@\[$(tput sgr0)\]\[\033[38;5;7m\]\h\[$(tput sgr0)\]\[\033[38;5;12m\]]\[$(tput sgr0)\]\[\033[38;5;15m\]: \[$(tput sgr0)\]\[\033[38;5;7m\]\w\[$(tput sgr0)\]\[\033[38;5;12m\]>\[$(tput sgr0)\]\[\033[38;5;10m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
 
PATH="/usr/local/heroku/bin:$PATH"
