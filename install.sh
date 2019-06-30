#!/bin/bash

# Luan vimfiles
git clone https://github.com/luan/vimfiles.git && ./vimfiles/bin/install

brew update
brew upgrade
brew cleanup
