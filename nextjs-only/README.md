# Next.js　Only

## 公式チュートリアル

https://nextjs.org/learn/basics/create-nextjs-app/setup

## 使い方

+ 起動方法

```
cd ./nextjs-only

docker compose build --no-cache
docker compose up -d
```

+ 状態確認方法

```
docker compose ps
```

+ コンテナにログインする

```
docker compose exec -it nextjs /bin/ash
```

+ 停止方法

```
docker compose stop
```

+ 削除方法

```
docker compose rm --volumes -f
```
