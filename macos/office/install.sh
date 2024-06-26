#!/bin/bash


brew install ansible sbt jenv kafka awscli siege pyenv pyenv-virtualenv terraform

# for pyenv
brew install openssl readline sqlite3 xz zlib bzip2

# install from brew cask
brew tap homebrew/cask-versions
brew install --cask intellij-idea pycharm  slack 'temurin@8' 'temurin@11' datagrip webstorm

[ -f ./install-resolver.sh ] && ./install-resolver.sh
