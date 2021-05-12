#!/bin/sh -e

# パスワードを $password 変数に格納する
printf "password: "
read password

# ユーザ名を $username 変数に格納する
username=`whoami`

# 「ログインシェルをzshに変更する」を 格納した $password を使って sudo で実行
echo "$password" | sudo -S chsh --shell `which zsh` "$username"
