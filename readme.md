# Package ocker-compose

## 用途

+ docker-composeのサンプル集です

## 説明

+ [01_nginx-only](https://github.com/iganari/package-docker-compose/tree/master/01_nginx-only)
    + alpineベースのNginxコンテナを利用したcompose
    + logはマウント先に出てくるので、コンテナに入らなくても確認が出来る。
+ [02_nginx-php](https://github.com/iganari/package-docker-compose/tree/master/02_nginx-php)
    + alpineベースのNginxとaplineベースのPHP(php-fpm)のコンテナを利用したcompose
    + PHPのバージョンは7.2
+ [10_nginx-loadbalancer]
    + WIP
+ [11_python-mysql]
    + WIP

## 注意点

+ なるべく、素のDocker Engine, docker-compose をご用意下さい 

## 使用するデータに関して

+ 当レポジトリにおいては、下記を使用しています
    + https://www.post.japanpost.jp/zipcode/dl/jigyosyo/index-zip.html
+ データを使用するに当たっての注意事項
    + https://www.post.japanpost.jp/zipcode/dl/jigyosyo/readme.html
    + 抜粋 `大口事業所個別番号データに限っては日本郵便株式会社は著作権を主張しません。自由に配布していただいて結構です。日本郵便株式会社への許諾も必要ありません。`

## 参考URL

+ docker-compose で作る nginx + PHP-FPM7 + HTTP/2 に対応したモダンな WordPress 開発環境
    + https://tech.recruit-mp.co.jp/infrastructure/post-13086/
+ docker-compose を使って WordPress テーマ開発環境を構築しよう
    + https://tech.recruit-mp.co.jp/infrastructure/post-11266/
+ docker-compose による nginx + HTTP/2 + PHP-FPM7 + MySQL 環境の構築方法
    + https://tech.recruit-mp.co.jp/infrastructure/post-12795/
+ [公式] docker-compose.ymlの書き方
    + https://docs.docker.com/compose/wordpress/#define-the-project
