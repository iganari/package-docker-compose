# Granfana only

## 使い方

+ 起動方法

```
cd grafana-only

# docker compose build --no-cache
docker compose up -d basic
```

+ 停止方法

```
docker compose stop
```

+ 削除方法

```
docker compose rm --volumes -f
```

## 確認方法

+ Web ブラウザで確認する

http://127.0.0.1:3000

+ Grafana の初期ユーザ名とパスワード

ユーザ名 | `admin`
--- | ---
パスワード | `admin`


##  注意点

+ `dummy` が仕込んであるので、単純に `docker-compose up -d` だけでは、 Grafana は起動しない
    + port が重複するため、起動時にエラーになる
    + 試験的に導入している
