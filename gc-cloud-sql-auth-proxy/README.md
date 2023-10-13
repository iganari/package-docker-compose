# Cloud SQL Auth Procy by Google Cloud


```
#
# 修正中です
#
```


```
docker-compose up -d --build
```
```
docker-compose ps
```



## ログイン

+ コンテナにログイン ---> :whale: 

```
docker-compose exec pkg-dc-gcloud-sql-proxy /bin/ash
```

+ :whale: GCP に認証

```
gcloud auth login -q
```

+ :whale: Cloud SQL Auth Proxy をコンテナ内で起動する

```
export _con_name="{Your GCP Project ID}:{Cloud SQL Instance Region}:{Cloud SQL Instance Name}"
```
```
cloud_sql_proxy -instances=${_con_name}=tcp:0.0.0.0:3306 &
```

+ MySQL Workbench などで起動する


WIP

## Cloud SQL Auth Proxy

https://github.com/iganari/package-gcp/tree/main/sql/cloud-sql-auth-proxy/client-pc


## 削除

```
docker-compose stop
docker-compose rm -f
```