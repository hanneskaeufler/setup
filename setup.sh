#!/usr/bin/env bash

# this script has never actually run, use with care
exit

# install basic build stuff
xcode-select --install

# install homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# install brew cask
brew install caskroom/cask/brew-cask

# install apps
brew cask install dropbox

# install apps for dev
brew install macvim --override-system-vim
brew cask install virtualbox
brew cask install vagrant
brew cask install google-chrome

# make macvim the new default vim
echo export PATH='/usr/local/bin:$PATH' >> ~/.bash_profile

# setup vim YouCompleteMe dependency
brew install cmake
cd ~/.vim/bundle/YouCompleteMe
./install.sh

#
# .dotfiles
#
# git clone github.com/hanneskaeufler/dotfiles

#
# ruby stuff
#

# rubygems.org
gem update --system

#
# php stuff
#

# getcomposer.org
curl -sS https://getcomposer.org/installer | php
