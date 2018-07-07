#!/usr/bin/env bash

# install everything
apt-get update
apt-get install software-properties-common
apt-add-repository ppa:neovim-ppa/stable
apt-get update
apt-get install build-essential i3 vim python python3 python-pip python3-pip \
    curl neovim cmake python-dev python3-dev dconf-cli dmenu i3status cargo feh \
    rxvt-unicode
pip install setuptools
pip3 install setuptools
pip3 install neovim
pip install neovim
pip3 install pywal

wal -i wallpaper.png

# terminal colours
git clone https://github.com/Anthony25/gnome-terminal-colors-solarized.git
gnome-terminal-colors-solarized/install.sh

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

# i3 gaps
apt-get install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf automake
add-apt-repository ppa:aguignard/ppa
apt-get update
apt-get install libxcb-xrm-dev

git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install

cp i3_config ~/.config/i3/config
cp Xresources ~/.Xresources
