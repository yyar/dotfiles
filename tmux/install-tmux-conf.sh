#!/bin/bash

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

rm ~/.tmux.conf || ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf

tmux source ~/.tmux.conf
