#! /bin/sh

echo "## Backing up current VIM config"
mv ~/.vimrc ~/.vimrc.bak
mv ~/.vim/ ~/.vim.bak/

echo "## Setting up symlinks"
ln -s $(pwd)/vimrc ~/.vimrc
ln -s $(pwd)/vim ~/.vim

echo "## Installation done... Enjoy"
