# Python - MySQL

## 起動・確認方法

+ env ファイルの作成
    + Docker Compose の[env_file](https://docs.docker.com/compose/environment-variables/)機能を使っています

```
cp -a .python-mysql.env.sample .python-mysql.env
vim .python-mysql.env     ### ここで、 '_PASSWORD' を変更して下さい( 必要なら、databse_name も変更して下さい)
```

+ Dockerコンテナの起動

```
sh dcs.sh start
```

+ docker-composeの状況確認

```
sh dcs.sh status
```

## 操作方法

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

## その他

+ :whale: カレントディレクトリがDockerコンテナの `/opt/python-mysql` にマウントしてあります(app, dbともに)

```
# ls -1a /opt/python-mysql
.
..
.gitignore
.python-mysql.env
.python-mysql.env.sample
dcs.sh
docker-compose.yml
mysql
python
readme.md

```
