# Python - MySQL

## 起動・確認方法

+ env ファイルの作成
  + Docker Compose の [env_file](https://docs.docker.com/compose/environment-variables/) 機能を使っています
  + DB ( MySQL ) のユーザとパスワードを決めます
  + 設定する環境変数は以下 ( [Docker Hub | MySQL](https://hub.docker.com/_/mysql?tab=description))
    + `MYSQL_ROOT_PASSWORD`
    + `MYSQL_USER`
    + `MYSQL_PASSWORD`
    + `MYSQL_DATABASE`

```
export _db_root_passwd='Secure Password for MySQL ROOT'
export _db_user_name='pkg_dc_flask'
export _db_user_passwd='Secure Password for MySQL USER'
export _database_name='pkg_dc_flask'



export _db_root_passwd='hogehogehogehoge'
export _db_user_name='pkg_dc_flask'
export _db_user_passwd='fugafugafuga'
export _database_name='pkg_dc_flask'
```

+ env ファイルの作成

```
cp -a _flask.env.sample .flask.env


### Linux の場合
sed -e -i "s/_R_PASSWD/${_db_root_passwd}/g" .flask.env
sed -e -i "s/_U_NAME/${_db_user_name}/g"   .flask.env
sed -e -i "s/_U_PASSWD/${_db_user_passwd}/g" .flask.env
sed -e -i "s/_DB_NAME/${_database_name}/g"  .flask.env


### macOS の場合
sed -i '' "s/_R_PASSWD/${_db_root_passwd}/g" .flask.env
sed -i '' "s/_U_NAME/${_db_user_name}/g"   .flask.env
sed -i '' "s/_U_PASSWD/${_db_user_passwd}/g" .flask.env
sed -i '' "s/_DB_NAME/${_database_name}/g"  .flask.env




```

+ Dockerコンテナの起動

```
bash dcs.sh up
```

+ docker-composeの状況確認

```
bash dcs.sh status
```

+ docker-compose の削除

```
bash dcs.sh delete
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
