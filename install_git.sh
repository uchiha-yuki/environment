#!/bin/bash

cd
if [ ! -d .tmp ]; then
	mkdir .tmp
fi

cd .tmp
git clone https://github.com/git/git.git
cd git
sudo make prefix=/usr/local all doc info
sudo make prefix=/usr/local install install-doc install-html install-info
rm git
