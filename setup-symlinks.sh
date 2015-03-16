#! /bin/sh

echo "## Backing up current VIM config"
mv ~/.vimrc ~/.vimrc.bak
mv ~/.vim/ ~/.vim.bak/

echo "## Setting up symlinks"
ln -s $(pwd)/vimrc $HOME/.vimrc
ln -s $(pwd)/vim $HOME/.vim

echo "## Installing Vundle"

git submodule init
git submodule update

echo "## Installing plugins"

vim +PluginInstall +qall

echo "## Installation done... Enjoy!"
