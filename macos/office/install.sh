#!/bin/bash


brew install ansible sbt jenv kafka

# install from brew cask
brew install --cask intellij-idea pycharm homebrew/cask-versions/sequel-pro-nightly slack temurin8 temurin11 zoom


[ -f ./install-resolver.sh ] && ./install-resolver.sh
