#!/bin/sh

sed -i "s/database_name_here/$MYSQL_DB_NAME/" wp-config-sample.php
sed -i "s/localhost/$MYSQL_HOST/" wp-config-sample.php
sed -i "s/password_here/$MYSQL_PASSWORD/" wp-config-sample.php
sed -i "s/username_here/$MYSQL_USER/" wp-config-sample.php
mv wp-config-sample.php wp-config.php

if ! wp core is-installed --allow-root --path=/var/www/jofelipe/wordpress; then
wp core install \
--url=https://jofelipe.42.fr \
--title=42 --admin_user=jofelipe \
--admin_email=jofelipe@student.42.fr \
--admin_password=123 \
--allow-root
fi


exec "$@"
