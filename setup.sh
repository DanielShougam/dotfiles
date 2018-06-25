#!/usr/bin/env bash

# install everything
apt-get update
apt-get install software-properties-common
apt-add-repository ppa:neovim-ppa/stable
apt-get update
apt-get install build-essential i3 vim python python3 python-pip python3-pip \
    curl neovim cmake python-dev python3-dev
pip install setuptools
pip3 install setuptools
pip3 install neovim
pip install neovim

# neovim setup
mkdir -p ../.config/nvim
cp ./init.vim ../.config/nvim/init.vim
curl -fLo ../.local/share/nvim/site/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim +PlugInstall +qall

sudo python3 ~/.local/share/nvim/plugged/YouCompleteMe/install.py --clang-completer

# vs code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list
apt-get update
apt-get install code
