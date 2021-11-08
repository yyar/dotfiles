#!/bin/bash

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


# install from brew
brew install tmux wget vim tmux-xpanes ag tree pass tig cmake make fd

# install from brew cask
brew install --cask google-chrome alacritty macvim spectacle visual-studio-code notion

# install candidates
# brew install --cask karabiner-elements


mkdir -p "$HOME/Library/KeyBindings"
ln -s `pwd`/DefaultkeyBinding.dict "$HOME/Library/KeyBindings/DefaultkeyBinding.dict"

