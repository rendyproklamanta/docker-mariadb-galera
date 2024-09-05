FROM bitnami/mariadb-galera:latest

# Copy your custom configuration file
COPY ./conf/my.cnf /opt/bitnami/mariadb/conf/bitnami/my_custom.cnf