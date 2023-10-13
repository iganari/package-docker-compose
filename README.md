# Package docker-compose

## 用途

+ Docker Compose のサンプル集です

+ 公式ドキュメント
  + https://docs.docker.com/compose/
+ 公式サンプル
  + https://github.com/docker/awesome-compose

## 説明

+ 単一コンテナ
  + [Apache only](./apache-only)
  + [Nginx only](./nginx-only)
  + [Grafana only](./grafana-only)
+ 複数コンテナ
  + [Nginx + Granafa](./grafana-nginx/)
  + [SSL + Nginx + Granafa](./grafana-nginx-ssl/)
  + [Nginx + PHP](./php-nginx/)
  + [Python + MySQL](./mysql-python/)
+ 特定の OSS

TBD


## 注意点

+ なるべく、最新のDocker Engine, Docker Compose をご用意下さい 

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
