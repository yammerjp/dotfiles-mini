#!/bin/bash

# パスワードを $password 変数に格納する
printf "password: "
read password

# 格納したパスワードを使ってsudoを実行する
#echo "$password" | sudo -S yum install -y git
echo "$password" | sudo -S yum install -y tmux
echo "$password" | sudo -S yum install -y zsh
echo "$password" | sudo -S yum install -y vim
echo "$password" | sudo -S yum install -y make
