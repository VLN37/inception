FROM debian:buster

RUN apt update && apt upgrade

RUN apt install -y wget \
    zip \
    php7.3 \
    php7.3-cgi \
    php7.3-cli \
    php7.3-fpm \
    php7.3-curl \
    php7.3-gd \
    php7.3-mysql \
    php7.3-mbstring \
    php7.3-phar


RUN wget https://wordpress.org/latest.zip
RUN unzip latest.zip
RUN mkdir -p /var/www/jofelipe
RUN mv wordpress /var/www/jofelipe
# RUN chown -R www-data:www-data /var/www/html/h2s

RUN echo "\nlisten = 9000\n" >> /etc/php/7.3/fpm/pool.d/www.conf
RUN mkdir -p /var/run/php

WORKDIR /var/www/jofelipe/wordpress
RUN apt install curl
ARG MYSQL_PASSWORD
ARG MYSQL_DB_NAME
ARG MYSQL_USER
ARG MYSQL_HOST
COPY tools/wordpress.sh /usr/bin/
RUN chmod a+x /usr/bin/wordpress.sh

RUN curl -O \
    https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod a+x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

EXPOSE 9000

# ENTRYPOINT [ "tail" ]
# CMD [ "-f" ]

ENTRYPOINT [ "wordpress.sh" ]
CMD [ "/usr/sbin/php-fpm7.3", "--nodaemonize" ]
