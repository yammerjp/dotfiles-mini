#!/bin/sh -e

# root ではない
# sudo 使える
# git 使える
# curl 使える

cd "$HOME"

git clone https://github.com/yammerjp/dotfiles-mini.git
cd dotfiles-mini

./link.sh
./install.sh
./chsh.sh
