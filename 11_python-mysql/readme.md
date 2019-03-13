# Python - MySQL

## 使い方

+ env ファイルの作成

```
cp -a .env.sample .env
vim .env     ### ここで、 '_PASSWORD' を変更して下さい( 必要なら、databse_name も変更して下さい)
```

+ Dockerコンテナの起動

```
sh dcs.sh start
```

+ docker-composeの状況確認

```
sh dcs.sh status
```
