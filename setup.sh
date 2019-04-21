#!/bin/sh


echo "Installing Brew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null

echo "Installing gphoto2"
brew install gphoto2
