# Python + MySQL

## 起動・確認方法

+ env ファイルの作成
  + Docker Compose の[env_file](https://docs.docker.com/compose/environment-variables/set-environment-variables/)機能を使っています

```
cd ./mysql-python


export _MYSQL_ROOT_PASSPD='hogehogeFUGAFUGA'

cp -a .python-mysql.env.sample .python-mysql.env
sed -i '' "s/_DB_R_PSWD/${_MYSQL_ROOT_PASSPD}/g" .python-mysql.env           ### for macOS
```

+ 起動方法

```
docker compose build --no-cache
docker compose up -d
```

+ 状態確認方法

```
docker compose ps
```

## 操作方法

+ Python用のDockerコンテナにログイン ---> :whale:

```
docker exec -it python-mysql-app /bin/ash
```

+ :whale: Pythonのバージョンの確認

```
python --version
```
```
### Example

# python --version
Python 3.11.6
```

+ :whale: Python 用の Docker コンテナから、MySQL 用の Docker コンテナの MySQL にログイン

```
mysql -hdb -uroot ${MYSQL_DATABASE} -p${MYSQL_ROOT_PASSWORD}
```
```
### Example

# mysql -hdb -uroot ${MYSQL_DATABASE} -p${MYSQL_ROOT_PASSWORD}
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MySQL connection id is 11
Server version: 8.1.0 MySQL Community Server - GPL

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MySQL [python-mysql]>

MySQL [python-mysql]> exit
Bye
```

+ :whale: MySQL からログアウト

```
exit
```

+ Python 用の Docker コンテナからログアウト

```
exit
```

## 停止・削除方法

+ 停止方法

```
docker compose stop
```

+ 削除方法

```
docker compose rm --volumes -f
```

+ ローカルの Docker イメージの削除

```
docker rmi mysql-python-app
docker rmi mysql-python-db
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
