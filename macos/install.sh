#!/bin/bash

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


# install from brew
brew install tmux wget vim tmux-xpanes ag tree pass tig

# install from brew cask
brew install --cask google-chrome alacritty macvim spectacle karabiner-elements
