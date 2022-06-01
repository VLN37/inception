#!/bin/sh

echo "$@"

# mv /config /etc/nginx/sites-available/
#config
# service nginx start
# rm /etc/nginx/sites-available/default

exec "$@"
