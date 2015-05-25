#!/bin/bash

# http://brew.sh
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

brew install wget
brew install git
brew install bash-completion
brew install coreutils
brew install carthage
brew install mysql
brew install rbenv
brew install xctool
brew install mogenerator

brew doctor
