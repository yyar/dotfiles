#!/bin/bash

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


mkdir -p ~/.config/alacritty && ln -s ~/.dotfiles/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml

~/.dotfiles/tmux/install-tmux-conf.sh

# Install fzf manually
# TODO: do not install in macos
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# TODO: setting zshrc
rm ~/.zshrc ; ln -s ~/.dotfiles/zshrc ~/.zshrc

# TODO: setting vimrc
rm ~/.vimrc ; ln -s ~/.dotfiles/vimrc ~/.vimrc

# TODO: setting ideavimrc
rm ~/.ideavimrc ; ln -s ~/.dotfiles/ideavimrc ~/.ideavimrc

# TODO: check this computer is in home or not
git config --global user.email 'yymjar@gmail.com'
git config --global user.name 'yyar'
