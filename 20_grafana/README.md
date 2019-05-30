# Granfana

## 操作

+ 起動方法

```
docker-compose up -d basic
```

+ アクセス

http://127.0.0.1:3000

+ Grafana の初期ユーザ名とパスワード

ユーザ名 | `admin`
--- | ---
パスワード | `admin`

##  注意点

+ `dummy` が仕込んであるので、単純に `docker-compose up -d` だけでは、 Grafana は起動しない
    + port が重複するため、起動時にエラーになる
    + 試験的に導入している
