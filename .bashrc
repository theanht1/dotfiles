#
# ~/.bashrc
#

# If not running interactively, don't do anything
export PG_USERNAME='mta'
export PG_PASSWORD='123456'
export PG_HOST='localhost'
export PG_PORT='5432'
# database for bayo
#export BAYO_DB='bayogogo'
# database for supplier tool
export BAYO_DB='suppliertool'
export RACK_ENV='development'
export BAYO_KEY='secret_key_for_JWT'
export CRAWLER_HOST='http://localhost:9000'
export SMTP_SERVER="smtp.gmail.com"
export SMTP_PORT=587
export EMAIL="encoded64_email@example.com"
export EMAIL_PASSWORD="encoded64_password"

# [[ $- != *i* ]] && return

# alias for git
#alias gits = 'git status'
#alias gitco = 'git checkout'
#alias gitps = 'git push'
#alias gitpl = 'git pull'

# alias some common sudo commands
#alias wifi-menu = 'sudo wifi-menu'
#alias netctl = 'sudo netctl'
#alias systemctl = 'sudo systemctl'

# export PS1="\[\033[38;5;12m\][\[$(tput sgr0)\]\[\033[38;5;10m\]\u\[$(tput sgr0)\]\[\033[38;5;12m\]@\[$(tput sgr0)\]\[\033[38;5;7m\]\h\[$(tput sgr0)\]\[\033[38;5;12m\]]\[$(tput sgr0)\]\[\033[38;5;15m\]: \[$(tput sgr0)\]\[\033[38;5;7m\]\w\[$(tput sgr0)\]\[\033[38;5;12m\]>\[$(tput sgr0)\]\[\033[38;5;10m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
 
PATH="/usr/local/heroku/bin:$PATH"
