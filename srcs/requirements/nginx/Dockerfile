FROM debian:buster

RUN apt update && \
    apt upgrade && \
    apt install nginx -y && \
    apt install iputils-ping -y && \
    apt install mariadb-client -y

COPY conf/ /etc/nginx/sites-available/

RUN ln -s /etc/nginx/sites-available/server1.conf \
          /etc/nginx/sites-enabled/server1.conf
RUN ln -s /etc/nginx/sites-available/server2.conf \
          /etc/nginx/sites-enabled/server2.conf

ARG CERT
ARG CERT_KEY

RUN apt install -y openssl
COPY tools/nginx.sh /usr/bin/
RUN chmod a+x /usr/bin/nginx.sh && \
    ./usr/bin/nginx.sh
COPY conf/index.html /var/www/html/

EXPOSE 443

ENTRYPOINT [ "nginx" ]
CMD [ "-g", "daemon off;" ]
