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
brew cast install adium

# install apps for dev
brew install macvim --override-system-vim
brew cask install virtualbox
brew cask install google-chrome
brew cask install firefox
brew cask install launchrocket
brew cask install vagrant

# make macvim the new default vim
echo export PATH='/usr/local/bin:$PATH' >> ~/.bash_profile

# setup vim YouCompleteMe dependency
brew install cmake
cd ~/.vim/bundle/YouCompleteMe
./install.sh

brew install tmux
brew install reattach-to-user-namespace
brew install the_silver_searcher

brew install redis
brew install selecta
brew install node

#
# npm
#
npm install -g grunt
npm install -g bower

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

#
# iOS dev helpers
#

# nokogiri
brew install libxml2 libxslt imagemagick
sudo env ARCHFLAGS="-arch x86_64" gem install nokogiri -- --use-system-libraries  -- --with-xml2-include=/usr/local/Cellar/libxml2/2.9.2/include/libxml2 --with-xml2-lib=/usr/local/Cellar/libxml2/2.9.2/lib --with-xslt-lib=/usr/local/lib --with-xslt-include=/usr/local/include

sudo gem install fastlane
