install: install-git install-conky install-vim install-tmux

install-vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc

install-git:
	rm -f ~/.gitconfig
	ln -s `pwd`/git/gitconfig ~/.gitconfig

install-conky:
	rm -f ~/.conkyrc
	ln -s `pwd`/conky/conkyrc ~/.conkyrc

install-tmux:
	rm -f ~/.tmux.conf
	ln -s `pwd`/tmux/tmux.conf ~/.tmux.conf
