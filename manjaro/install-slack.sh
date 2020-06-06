#!/bin/bash

sudo pacman -S --noconfirm base-devel

pushd /tmp
git clone https://aur.archlinux.org/slack-desktop.git
cd slack-desktop/
makepkg -sri
popd
# yay -S slack-desktop


