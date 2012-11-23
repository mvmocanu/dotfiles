#!/bin/bash
# wget -qO- url-to-raw-file | /bin/bash

if [ -d ~/.dotfiles ]; then
    cd ~/.dotfiles
    git pull
else
    git clone https://bitbucket.org/mvmocanu/dotfiles.git ~/.dotfiles/
fi

cd ~/.dotfiles
make install
#git submodule init
#git submodule update
