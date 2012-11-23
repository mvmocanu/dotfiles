install: install-git install-conky

#install-vim:
	#rm -rf ~/.vim ~/.vimrc
	#ln -s `pwd`/vim ~/.vim
	#ln -s ~/.vim/vimrc ~/.vimrc

install-git:
	rm -f ~/.gitconfig
	ln -s `pwd`/git/gitconfig ~/.gitconfig

install-conky:
	rm -f ~/.conkyrc
	ln -s `pwd`/conky/conkyrc ~/.conkyrc
