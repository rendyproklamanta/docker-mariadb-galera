# MariaDB + Galera Cluster

## Run

```shell
./start.sh
```

## Test

```shell
mysql -uroot -proot_password

SELECT User, Host FROM mysql.user;

select @@hostname
```
