# SSL + Nginx + Granafa

## 操作

+ 起動方法

```
docker-compose up -d
```

+ HOSTS の設定
    + `/etc/hosts` を直接編集するか、 hosts を変更するアプリケーションにて、以下の設定をして下さい

```
127.0.0.1 board.iganari.com
```

+ アクセス
    + https://board.iganari.com
    + :fire: 自己証明書を使っているため、ブラウザにて除外の操作が必要です


+ Grafana の初期ユーザ名とパスワード

ユーザ名 | `admin`
--- | ---
パスワード | `admin`

