#!/bin/bash

# agreement
sudo xcodebuild -license accept

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/yyar/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"



# install from brew
brew install tmux wget vim tmux-xpanes ag tree pass tig cmake make fd pwgen jq mas

brew install bash # for tmux-fzf-url

# install from brew cask
brew install --cask google-chrome alacritty visual-studio-code notion caffeine rectangle

# install candidates
# brew install --cask karabiner-elements

# for vim setting
# brew install --cask macvim

mkdir -p "$HOME/Library/KeyBindings"
ln -s `pwd`/DefaultkeyBinding.dict "$HOME/Library/KeyBindings/DefaultkeyBinding.dict"

