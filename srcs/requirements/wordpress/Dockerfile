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

# RUN wget https://wordpress.org/latest.zip && \
#     mkdir /var/www/html/jofelipe && \
#     unzip latest.zip && \
#     mv wordpress/* /var/www/html/jofelipe

ENTRYPOINT [ "bash" ]
