#!/bin/bash

sudo pacman -S git base-devel --no-confirm
pushd /tmp
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
popd


