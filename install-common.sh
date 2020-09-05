#!/bin/bash

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

mkdir -p ~/.config/alacritty && ln -s ~/.dotfiles/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

~/.dotfiles/tmux/install-tmux-conf.sh

# TODO: setting zshrc
rm ~/.zshrc ; ln -s ~/.dotfiles/zshrc ~/.zshrc

# TODO: setting vimrc
rm ~/.vimrc ; ln -s ~/.dotfiles/vimrc ~/.vimrc


# TODO: check this computer is in home or not
git config --global user.email 'yymjar@gmail.com'
git config --global user.name 'yyar'
