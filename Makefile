#INSTALL_PROVIDER="YOU HAVE NO PROVIDER CONFIGURED, OPEN THE MAKEFILE AND EDIT THIS LINE"
INSTALL_PROVIDER = $(shell which yaourt)

.PHONY: apps
apps:
	$(shell $(INSTALL_PROVIDER) -S openbox nitrogen arandr tint2 synapse volumeicon redshift)

.PHONY: bash
bash:
	cp ./aliases ~/.alias
	cat ./bashrc >> ~/.bashrc	

.PHONY: vim
vim:
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	rm ~/.vimrc && cp ./vimrc ~/.vimrc
	vim -c ':PluginInstall' 

.PHONY: git
git:
	test -s ~/.gitconfig && rm ~/.gitconfig || true
	cp ./gitconfig ~/.gitconfig

.PHONY: openbox
openbox: 
	test -s ~/.config/openbox/autostart && rm ~/.config/openbox/autostart || true
	test ! -d ~/.config/openbox && mkdir ~/.config/openbox || true
	cp ./autostart ~/.config/openbox/
	test -s ~/.tint2rc && rm ~/.tint2rc || true
	cp ./tint2conf ~/.config/
