FROM debian:buster

RUN apt update && apt upgrade
RUN apt install mariadb-server -y

COPY tools/script.sh /usr/bin/
RUN chmod a+x /usr/bin/script.sh && \
    ./usr/bin/script.sh

EXPOSE 3306

ENTRYPOINT [ "script.sh" ]
CMD [ "mysqld" ]
