#!/bin/sh

clear_all_history() {
  for pane_id in $(tmux list-panes -a -F '#{pane_id}'); do
    tmux clear-history -t $pane_id
  done
}


clear_all_history

echo 'Clear all tmux panes history!'
