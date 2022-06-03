FROM debian:buster

RUN apt update && \
    apt upgrade && \
    apt install nginx -y && \
    apt install iputils-ping -y && \
    apt install mariadb-client -y

COPY conf/server1.conf /etc/nginx/sites-available/

RUN ln -s /etc/nginx/sites-available/server1.conf \
          /etc/nginx/sites-enabled/server1.conf


COPY tools/nginx.sh /usr/bin/
RUN chmod a+x /usr/bin/nginx.sh && \
    ./usr/bin/nginx.sh
EXPOSE 443

ENTRYPOINT [ "nginx" ]
CMD [ "-g", "daemon off;" ]
#
# ENTRYPOINT [ "bash" ]
