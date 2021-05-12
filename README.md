# dotfiles-mini

`.bashrc`や`.zshrc`、`.vimrc`などのファイルをGitHubで管理する dotfiles のリポジトリです。


CentOS や AmazonLinux において、次のコマンドを実行することで各種dotfilesの配置やパッケージのインストール、デフォルトシェルの変更が行われます。

```sh
$ curl -sL https://raw.githubusercontent.com/yammerjp/dotfiles-mini/master/run.sh | bash
```

実際に実行されるスクリプトは[run.sh](run.sh)にあるので、これをコピーして不要な部分は削除し、GitHubのユーザ名とリポジトリ名をご自身のものに書き換えてご利用ください。

```
# 前提: このスクリプトを実行するには次のような環境である必要があります
#   1. パッケージマネージャとして yum が使える CentOS, AmazonLinux等)
#   2. sudo, git, curl が使える必要があります
#       それぞれインストールするには次のようなコマンドを実行します
#       $ su -c yum install -y sudo # sudo コマンドのインストール
#       $ sudo yum install -y git   # git のインストール
#       $ sudo yum install -y curl  # curl のインストール
```
