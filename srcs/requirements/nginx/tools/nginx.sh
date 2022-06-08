#!/bin/sh

echo "$@"

# export CERT="123"
# export CERT_KEY="123"
service openssl start
openssl req -new -nodes -x509 \
-newkey rsa:4096 \
-days 180 \
-keyout $CERT_KEY \
-out $CERT \
-subj "/C=BR/ST=SP/L=SP/O=42/OU=jofelipe/CN=jofelipe.42.fr"
service openssl stop

sed -i "s#PLACEHOLDER_CERT_KEY#$CERT_KEY#"\
       /etc/nginx/sites-available/server1.conf
sed -i "s#PLACEHOLDER_CERT#$CERT#" /etc/nginx/sites-available/server1.conf

# mv /config /etc/nginx/sites-available/
#config
# service nginx start
# rm /etc/nginx/sites-available/default

# exec "$@"
