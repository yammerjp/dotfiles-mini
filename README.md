# dotfiles-mini

`.bashrc`や`.zshrc`、`.vimrc`などのファイルをGitHubで管理する dotfiles のリポジトリです。

## インストール

CentOS や AmazonLinux において、次のコマンドを実行することで以下が実行されます

- 各種dotfilesの配置
- パッケージのインストール
- デフォルトシェルの変更が行われます。

```sh
$ curl -sL https://raw.githubusercontent.com/yammerjp/dotfiles-mini/master/run.sh | sh
```

## 中身

実際に実行されるスクリプトは[run.sh](run.sh)にあります。
ご自身のdotfilesリポジトリを使うときは、このシェルスクリプトをもとにを不要な部分は削除し、GitHubのユーザ名とリポジトリ名をご自身のものに書き換えてご利用ください。

## 注意

前提: このスクリプトを実行するには次のような環境である必要があります
1. パッケージマネージャとして yum が使える CentOS, AmazonLinux等)
2. sudo, git, curl が使える必要があります

2.について、それぞれインストールするには次のようなコマンドを実行します
```sh
$ su -c yum install -y sudo # sudo コマンドのインストール
$ sudo yum install -y git   # git のインストール
$ sudo yum install -y curl  # curl のインストール
```
