#!/bin/bash
# wget -qO- --no-check-certificate https://raw.github.com/mvmocanu/dotfiles/master/install.sh | /bin/bash

if [ -d ~/.dotfiles ]; then
    cd ~/.dotfiles/.vim/bundle/vundle/
    git pull origin master
    cd ~/.dotfiles
    git pull origin master
    #sudo pip install pip --upgrade
    #sudo pip install flake8 --upgrade
    vim -u ~/.dotfiles/vim/vimrc - +BundleInstall! +BundleClean! +qall
else
    git clone https://github.com/mvmocanu/dotfiles.git ~/.dotfiles/
    git clone https://github.com/gmarik/vundle.git ~/.dotfiles/vim/bundle/vundle

    cd ~/.dotfiles
    make install

    #sudo pip install pip --upgrade
    #sudo pip install flake8 --upgrade
    vim -u ~/.dotfiles/vim/vimrc - +BundleInstall +qall
fi

