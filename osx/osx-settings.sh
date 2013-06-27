#!/usr/bin/env bash

# AirDrop: Use it over every network interface
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Finder: Show ~/Library
chflags nohidden ~/Library

# Finder: Show icons for external harddrives and removable media on desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Finder: Show hidden files
# defaults write com.apple.Finder AppleShowAllFiles YES

# Safari: Setup for development
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Menu bar: Disable transparency
defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false

# Gatekeeper: No Limitations
spctl --master-disable

# Calendar: 14 days in week view
defaults write com.apple.iCal CalUIDebugDefaultDaysInWeekView 14

# MacAppStore: Show debug menu
defaults write com.apple.appstore ShowDebugMenu -bool true

###############################################
# Restart Finder for the changes to take effect
###############################################
kill Finder