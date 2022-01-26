#!/bin/bash


brew install ansible sbt jenv kafka awscli siege pyenv pyenv-virtualenv terraform

# for pyenv
brew install openssl readline sqlite3 xz zlib bzip2

# install from brew cask
brew install --cask intellij-idea pycharm homebrew/cask-versions/sequel-pro-nightly slack temurin8 temurin11 zoom aws-vpn-client


[ -f ./install-resolver.sh ] && ./install-resolver.sh
