#!/bin/sh

service mysql start
mysql -e "create database wordpress"
mysql -e "update user set plugin='' where User='root'; FLUSH PRIVILEGES;"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '123'; FLUSH PRIVILEGES;"
mysql -e "CREATE USER 'root'@'%' identified by '123';FLUSH PRIVILEGES;"
mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'%';"
echo "123\n n\n y\n y\n y\n y\n" | mysql_secure_installation
service mysql stop
exec "$@"
