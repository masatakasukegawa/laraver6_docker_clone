### 使用技術
- PHP 7.4系
- Laravel ６.x系
- nginx 1.1系
- mysql 8.0系
- docker & docker-compose
- git

### ディレクトリ構成
#### App以下  
ここのlaravelディレクトリにlaravelのソースを入れること  
詳しくは、↓の環境構築コマンドを参照  
#### Infrastructure以下
ここは、Dockerの設定やミドルウェアの設定が入る  
基本的にいじらないこと

## 環境構築手順
### インストールするツール
#### 必須
- Docker, docker-compose
- git

### インストール手順
#### Windows Home版
windows homeの人は[Windows 10 HomeでDocker Composeを使う](https://qiita.com/_bobtabo_/items/4ea772cc044631a1d5a1)を参考にDocker を入れてください。

#### Windows 共通
[Windowsでmakeを使えるようにする](https://qiita.com/taki-ikat/items/f501f44a8d44e3fd6987)を参考にmakeコマンドを使えるようにしてください。
必須ではありませんが、入れた方が楽だと思います。

#### Mac & Windows pro
[Docker Compose のインストール](https://docs.docker.jp/compose/install.html)  
上記の記事を参考にDocker及びdocker-composeをインストールすること  

#### git のインストール
[Gitのインストール](https://git-scm.com/book/ja/v2/使い始める-Gitのインストール)

### 環境構築手順
このリポジトリをクローンする.　　
クローン後は[こちら](https://qiita.com/takamicii/items/b0d1cc92fd172468fbf3)を参考にして、リモートリポジトリを変更してください。  
リモートリポジトリを変更し、自分のリモートリポジトリを作成した後  
クローンしてきたディレクトリに移動し、下記コマンドを実行する。　　
> make set-up  

実行が終わった後、下記URLにアクセスし、Laravelのウェルカム画面が出ていたら、環境構築は完成です。　　
http://127.0.0.1:8000/　　

### コマンド系
laravelのartisanコマンドは、Dockerのコンテナ内に入ってから実行しても出来るが、下記のコマンドの後に実行したいコマンドを入れることで、実行可能です。  
> docker-compose exec application hogehoge
hogehoge の所を実行したいコマンドにする  

ex) 
1. php artisan make:controller PhotoController を実行したい時　　
> docker-compose exec application php artisan make:controller PhotoController  
2. composer installをしたい時  
> docker-compose exec application composer install


