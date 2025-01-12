.PHONY: common
common:
	stow -S common

.PHONY: tmux
tmux:
	stow -S tmux

.PHONY: vim
vim:
	stow -S vim

.PHONY: zsh
zsh:
	stow -S zsh

.PHONY: sway
sway:
	stow -S sway -t ~/.config/sway

.PHONY: waybar
waybar:
	stow -S waybar -t ~/.config/waybar
