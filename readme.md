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


+ https://tech.recruit-mp.co.jp/infrastructure/post-13086/
+ https://docs.docker.com/compose/wordpress/#define-the-project
+ https://tech.recruit-mp.co.jp/infrastructure/post-11266/
