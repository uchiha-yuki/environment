#!/bin/bash

config_path="/usr/lib/python2.7/config"
read -p "where is your config (press y for default $config_path): " key 
if [ $key != "y" ]; then
    config_path="$key"
fi

if [ ! -d "$config_path" ]; then
    echo "directory  $config_path not exists"
    exit 1
fi

cd
if [ ! -d ".tmp" ]; then
    mkdir .tmp
fi

cd .tmp
git clone https://github.com/nschloe/vim.git
cd vim 
read -p "choose a version to be installed" VERSION
git checkout "$VERSION"
./configure --prefix=/usr/local --enable-pythoninterp "--with-python-config-dir=$config_path"
make
sudo checkinstall make install
rm -rf ../vim

read -p "do you want to make vim $VERSION only for yourself: " key
if [ "$key" == "y" ]; then
	sudo mv /usr/local/bin/vim "/usr/local/bin/vim$VERSION"
	cd
	echo "alias vim=/usr/local/bin/vim$VERSION" >> .bashrc	
fi
