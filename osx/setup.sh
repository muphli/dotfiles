# !/usr/bin/env bash

#Installs Xcode Command Line Tools
xcode-select --install

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
brew cask install teamviewer
brew cask install keyboard-cleaner
brew cask install mou
brew cask install delivery-status

#Configures Alfred to add applications-directory to search scope
brew cask alfred link

#Configures Git
git config --global user.email "hallo@muph.li"
git config --global user.name "muphli"	
