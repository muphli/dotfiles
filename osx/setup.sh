# !/usr/bin/env bash

#Installs Homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

#Installs Cask
brew tap phinze/cask
brew install brew-cask

#Installs Applications
brew cask install dropbox
brew cask install onepassword
brew cask install chocolat
brew cask install fantastical
brew cask install flow
brew cask install things
brew cask install alfred
brew cask install f-lux

#Configures Alfred to add applications-directory to search scope
brew cask alfred link
