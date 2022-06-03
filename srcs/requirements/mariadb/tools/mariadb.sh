#!/bin/sh

service mysql start
echo "123\n n\n y\n n\n n\n y\n" | mysql_secure_installation
mysql -e "create user 'root'@'%' identified by '123';FLUSH PRIVILEGES"
service mysql stop
# touch log
# mysqld --skip-syslog --log-error=log
# cat log
# echo hello
exec "$@"
