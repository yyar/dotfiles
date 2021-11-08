#!/bin/bash


brew install ansible sbt jenv kafka awscli siege

# install from brew cask
brew install --cask intellij-idea pycharm homebrew/cask-versions/sequel-pro-nightly slack temurin8 temurin11 zoom aws-vpn-client


[ -f ./install-resolver.sh ] && ./install-resolver.sh
