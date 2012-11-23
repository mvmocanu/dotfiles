#!/bin/bash
# wget -qO- https://github.com/danclaudiupop/dotfiles/raw/master/install.sh | /bin/bash

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
