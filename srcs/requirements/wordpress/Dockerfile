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
    php7.3-mbstring

RUN wget https://wordpress.org/latest.zip
RUN unzip latest.zip
RUN mkdir -p /var/www/jofelipe
RUN mv wordpress /var/www/jofelipe


RUN mkdir -p /var/run/php

EXPOSE 9000

# ENTRYPOINT [ "tail" ]
# CMD [ "-f" ]

ENTRYPOINT ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
