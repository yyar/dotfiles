#!/bin/bash

sudo pacman-mirrors --country South_Korea --timeout 5
sudo pacman -Syyu

sudo pacman -S --noconfirm git curl tmux zsh vim fzf tig cmake make
sudo pacman -S --noconfirm alacritty qutebrowser viewnior

# TODO: install-fonts.sh

$(dirname $(which $0))/install-slack.sh

# TODO: move to linux conf
ln -s ~/.dotfiles/linux/Xmodmap ~/.Xmodmap
# /usr/bin/setxkbmap -option "ctrl:nocaps"



