# users

## 注意点

:warning: 環境変数を暗号化しているため、復号化の処理が必要 :warning:

作業に関しては以下の2点が想定出来る

+ ansibleを流すサーバ内から行う(ansible-local)
+ ansibleを流すサーバ外から行う(ansible-remote)

## Case1 ansibleを流すサーバ内から行う

```
sudo su -
```

### role[common]が冪等性を持って流せるか確認する

+ 移動

```
cd package-ansible-playbook/centos-7
```

+ Dry RUN

```
ansible-playbook -i inventoryfile/vagrant-local servers.yml \
                 -l vagrant-local
                 --tag common \
                 --check \
                 --diff
```

+ RUN

```
ansible-playbook -i inventoryfile/vagrant-local servers.yml \
                 -l vagrant-local
                 --tag common 
```


### varsの編集

```
ansible-vault edit --vault-password-file /tmp/.vault_password_file roles/user/vars/main.yml
```

### ansible-playbook 実行

```
ansible-playbook -i inventoryfile/vagrant-basic servers-vault.yml \
                 -l user \
                 --tag user \
                 --vault-password-file /tmp/.vault_password_file
```

## Case1 ansibleを流すサーバ外から行う
