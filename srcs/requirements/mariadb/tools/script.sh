#!/bin/sh

service mysql start
echo "123\n n\n y\n n\n n\n y\n" | mysql_secure_installation

exec "$@"
