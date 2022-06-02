FROM debian:buster

RUN apt update && apt upgrade
RUN apt install mariadb-server -y

COPY tools/mariadb.sh /usr/bin/
RUN chmod a+x /usr/bin/mariadb.sh

EXPOSE 3306

ENTRYPOINT [ "mariadb.sh" ]
CMD [ "mysqld_safe" ]

# ENTRYPOINT [ "script.sh" ]
