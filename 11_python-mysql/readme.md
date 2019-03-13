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

+ Python用のDockerコンテナにログイン ---> :whale:

```
docker exec -it python-mysql-app /bin/sh
```

+ :whale: Pythonのバージョンの確認

```
python --version
```
```
### Example

# python --version
Python 3.7.2
```

+ :whale: Python用のDockerコンテナから、MySQL用のDockerコンテナのMySQLにログイン

```
mysql -hdb -u${MYSQL_USER} ${MYSQL_DATABASE} -p${MYSQL_ROOT_PASSWORD}
```
```
### Example

# mysql -hdb -u${MYSQL_USER} ${MYSQL_DATABASE} -p${MYSQL_ROOT_PASSWORD}
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MySQL connection id is 10
Server version: 8.0.15 MySQL Community Server - GPL

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MySQL [python-mysql]> exit
Bye

```
