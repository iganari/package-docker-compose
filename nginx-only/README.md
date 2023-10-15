# nginx only

## 使い方

+ 起動方法

```
cd ./nginx-only

docker compose build --no-cache
docker compose up -d
```

+ 状態確認方法

```
docker compose ps
```

+ コンテナにログインする

```
docker compose exec -it web /bin/ash
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

http://127.0.0.1


## 以下のサンプルをお借りしています

http://www.coolwebwindow.com/template/private.php
