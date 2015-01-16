#!/bin/bash

cd
if [ ! -d .tmp ]; then
	mkdir .tmp
fi

cd .tmp
git clone https://github.com/git/git.git
cd git
git --tags --decorate --simplify-by-decorate
read -p "choose a version to be installed" VERSION
git checkout "$VERSION"
make prefix=/usr/local all doc info
sudo checkinstall make prefix=/usr/local install install-doc install-html install-info
rm git

read -p "do you want to make git $VERSION only for yourself: " key
if [ "$key" == "y" ]; then
	sudo mv /usr/local/bin/git "/usr/local/bin/git$VERSION"
	cd
	echo "alias git=/usr/local/bin/git$VERSION" >> .bashrc	
fi 
