-- Create MaxScale monitor user
CREATE USER IF NOT EXISTS 'maxuser'@'%' IDENTIFIED BY 'maxpwd';
GRANT REPLICATION SLAVE ADMIN ON *.* TO 'maxuser'@'%';
GRANT REPLICA MONITOR ON *.* TO 'maxuser'@'%';
GRANT FILE ON *.* TO 'maxuser'@'%';
GRANT CONNECTION ADMIN ON *.* TO 'maxuser'@'%';
GRANT REPLICATION CLIENT ON *.* TO 'maxuser'@'%';

-- Create user for schema access
CREATE USER IF NOT EXISTS 'superuser'@'%' IDENTIFIED BY 'super_password';
GRANT ALL PRIVILEGES ON *.* TO 'superuser'@'%' WITH GRANT OPTION;

-- Create HAProxy check user
CREATE USER IF NOT EXISTS 'haproxy_check'@'%' IDENTIFIED BY 'haproxy_password';
GRANT REPLICATION CLIENT ON *.* TO 'haproxy_check'@'%';

FLUSH PRIVILEGES;