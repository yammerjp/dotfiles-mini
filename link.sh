#!/bin/sh -e

# 実行時のカレントディレクトリに関わらずこのファイルのあるディレクトリを得る
SCRIPT_DIR=$(cd $(dirname $0); pwd)

# シンボリックリンクを貼る
ln -s "$SCRIPT_DIR/.zshrc" ~/.zshrc
ln -s "$SCRIPT_DIR/.vimrc" ~/.vimrc
ln -s "$SCRIPT_DIR/.tmux.conf" ~/.tmux.conf
