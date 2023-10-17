# Node.js Only

+ 起動方法

```
cd ./nodejs-only

# docker compose build --no-cache
docker compose up -d
```

+ 状態確認方法

```
docker compose ps
```

+ コンテナにログインする

```
docker compose exec -it nodejs /bin/bash
```

+ 停止方法

```
docker compose stop
```

+ 削除方法

```
docker compose rm --volumes -f
```
