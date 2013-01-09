#!/bin/bash
# wget -qO- https://raw.github.com/mvmocanu/dotfiles/master/install.sh | /bin/bash

if [ -d ~/.dotfiles ]; then
    cd ~/.dotfiles
    git pull origin master
else
    git clone https://github.com/mvmocanu/dotfiles.git ~/.dotfiles/
fi

cd ~/.dotfiles
make install

git submodule sync
git submodule init
git submodule update
git submodule foreach git pull origin master
git submodule foreach git submodule init
git submodule foreach git submodule update
