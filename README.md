# MariaDB + Galera Cluster

## Stacks

- MariaDB 11.x
- Docker : Recomended using Docker Swarm
- Haproxy : Load balancer

## Servers (4)

- Master (standby-node)
- Galera1, Galera2, Galera3 (worker-node)

## Steps
  
```shell
mkdir -p /var/lib/mysql
cd /var/lib/mysql
git clone https://github.com/rendyproklamanta/docker-mariadb-replication.git .
```

- Adding port to firewall

```shell
ufw allow 3301
ufw allow 3302
ufw allow 3303
ufw allow 6033
ufw allow 8989
ufw allow 8404
```

- Editing password .env

```shell
cd /var/lib/mysql
find -type f -exec sed -i 's/MASTER_ROOT_PASSWORD_SET/YOUR_PASSWORD/g' {} +
find -type f -exec sed -i 's/GALERA1_ROOT_PASSWORD_SET/YOUR_PASSWORD/g' {} +
find -type f -exec sed -i 's/GALERA2_ROOT_PASSWORD_SET/YOUR_PASSWORD/g' {} +
find -type f -exec sed -i 's/GALERA3_ROOT_PASSWORD_SET/YOUR_PASSWORD/g' {} +
find -type f -exec sed -i 's/SUPER_PASSWORD_SET/YOUR_PASSWORD/g' {} +
```

## Run

```shell
chmod +x start.sh && ./start.sh
```

## Access database using PMA

```shell
Link : http://localhost:8000 or http://[YOUR_IP_ADDRESS]:8000
user : super_usr
pass : SUPER_PASSWORD_SET
```

- Access using MySql client, like navicat, etc..

```shell
host : maxscale or [YOUR_IP_ADDRESS]
user : super_usr
pass : SUPER_PASSWORD_SET
port : 6033
```

## Test

```shell
mysql -uroot -proot_password

SELECT User, Host FROM mysql.user;

select @@hostname
```
