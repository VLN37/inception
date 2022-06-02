FROM debian:buster

RUN apt update && \
    apt upgrade && \
    apt install nginx -y && \
    apt install iputils-ping -y

COPY conf/server1.conf /etc/nginx/sites-available/

RUN ln -s /etc/nginx/sites-available/server1.conf \
          /etc/nginx/sites-enabled/server1.conf


COPY tools/script.sh /usr/bin/
RUN chmod a+x /usr/bin/script.sh && \
    ./usr/bin/script.sh
EXPOSE 443

ENTRYPOINT [ "script.sh" ]
CMD [ "nginx", "-g", "daemon off;" ]
#
# ENTRYPOINT [ "bash" ]
