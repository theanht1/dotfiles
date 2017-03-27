# Setup fzf
# ---------
if [[ ! "$PATH" == */home/mta/.fzf/bin* ]]; then
  export PATH="$PATH:/home/mta/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/mta/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/mta/.fzf/shell/key-bindings.zsh"

