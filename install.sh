#!/bin/bash
# wget -qO- https://bitbucket.org/mvmocanu/dotfiles/raw/42de9616131c789044c3c3f2a8ed136e60090c72/install.sh | /bin/bash

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
