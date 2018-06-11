# package-docker-compose

# :warning: WIP :warning:

## 用途

+ docker-composeの設定サンプル

## 説明

+ [01_nginx-only](https://github.com/iganari/package-docker-compose/tree/master/01_nginx-only)
    + alpineベースのNginxコンテナを利用したcompose
    + logはマウント先に出てくるので、コンテナに入らなくても確認が出来る。
+ [02_nginx-php](https://github.com/iganari/package-docker-compose/tree/master/02_nginx-php)
    + alpineベースのNginxとaplineベースのPHP(php-fpm)のコンテナを利用したcompose
    + PHPのバージョンは7.2

## 注意点

+ docker for Macだと権限の問題が大きいのでなるべく他のOSでやるとよい


## 参考URL

+ docker-compose で作る nginx + PHP-FPM7 + HTTP/2 に対応したモダンな WordPress 開発環境
    + https://tech.recruit-mp.co.jp/infrastructure/post-13086/
+ docker-compose を使って WordPress テーマ開発環境を構築しよう
    + https://tech.recruit-mp.co.jp/infrastructure/post-11266/
+ docker-compose による nginx + HTTP/2 + PHP-FPM7 + MySQL 環境の構築方法
    + https://tech.recruit-mp.co.jp/infrastructure/post-12795/
+ [公式] docker-compose.ymlの書き方
    + https://docs.docker.com/compose/wordpress/#define-the-project
