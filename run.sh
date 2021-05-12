#!/bin/sh -e
# -e オプションを付けると、シェルスクリプトの途中でエラーが発生する (終了コードが0でない) とその行で実行が中止されます


# 前提: このスクリプトを実行するには次のような環境である必要があります
#   1. パッケージマネージャとして yum が使える CentOS, AmazonLinux等)
#   2. sudo, git, curl が使える必要があります
#       それぞれインストールするには次のようなコマンドを実行します
#       $ su -c yum install -y sudo # sudo コマンドのインストール
#       $ sudo yum install -y git   # git のインストール
#       $ sudo yum install -y curl  # curl のインストール


# リポジトリをダウンロードする
# ========================================
cd "$HOME"
git clone https://github.com/yammerjp/dotfiles-mini.git
cd dotfiles-mini


# シンボリックリンクを貼る
# ========================================
DOTFILES_DIR=`pwd`
ln -s "$DOTFILES_DIR/.zshrc" ~/.zshrc
ln -s "$DOTFILES_DIR/.vimrc" ~/.vimrc
ln -s "$DOTFILES_DIR/.tmux.conf" ~/.tmux.conf


# 各種ソフトウェアをインストールする
# ========================================
## sudo するためのパスワードを $password 変数に格納する
printf "password: "
read password


# 格納したパスワードを使ってsudoを実行する
echo "$password" | sudo -S yum install -y tmux
echo "$password" | sudo -S yum install -y zsh
echo "$password" | sudo -S yum install -y vim
echo "$password" | sudo -S yum install -y make
echo "$password" | sudo -S yum install -y util-linux-user # chshを使うために必要


# ログインシェルをzshに変更する
# ========================================

# ユーザ名を $username 変数に格納する
username=`whoami`
# 「ログインシェルをzshに変更する」を 格納した $password を使って sudo で実行
echo "$password" | sudo -S chsh --shell `which zsh` "$username"
./chsh.sh


echo "To install dotfiles is Success!"
