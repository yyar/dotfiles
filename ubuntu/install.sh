#!/bin/bash

sudo sed -i 's/kr.archive.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list

sudo add-apt-repository ppa:jonathonf/vim

sudo apt update -y && sudo apt upgrade -y

# seperate listing packages to other file
sudo apt install -y git vim tmux curl zsh gnome-tweaks fonts-powerline fzf ripgrep silversearcher-ag cmake tig tree fd-find

sudo apt install -y qutebrowser
$(dirname $(which $0))/install-chrome.sh
$(dirname $(which $0))/install-alacritty.sh

# NOTE: install slack using snap or not
$(dirname $(which $0))/install-slack.sh

$(dirname $(which $0))/install-fonts.sh
sudo apt autoremove -y


# OS specific link path
mkdir ~/.config/qutebrowser && ln -s ~/.dotfiles/qutebrowser/config.py ~/.config/qutebrowser/config.py


# TODO: write below things to do after installation
# * Gnome Tweaks - Capslock is also. Ctrl, Alt, Super key swap
# * Mouse - Natural Scrolling
# * Add keyboard shortcut (open alacritty terminal, open web browser, close the window)
# * Default Application
# * Uim - key binding setting
# * set default monospace font to derivative powerline

