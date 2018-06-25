#!/usr/bin/env bash

# install everything
apt-get update
apt-get install build-essential i3 vim git python python3 python-pip python3-pip neovim curl
pip3 install neovim
pip install neovim

# neovim setup
mkdir -p ../.config/nvim
cp ./init.vim ../.config/nvim/init.vim
curl -fLo ../.local/share/nvim/site/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
