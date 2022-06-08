#!/bin/sh

sed -i "s/database_name_here/$MYSQL_DB_NAME/" wp-config-sample.php
sed -i "s/localhost/$MYSQL_HOST/" wp-config-sample.php
sed -i "s/password_here/$MYSQL_PASSWORD/" wp-config-sample.php
sed -i "s/username_here/$MYSQL_USER/" wp-config-sample.php
mv wp-config-sample.php wp-config.php
