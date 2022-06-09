FROM debian:buster

RUN apt update && apt upgrade
RUN apt install mariadb-server -y

COPY tools/mariadb.sh /usr/bin/
RUN chmod a+x /usr/bin/mariadb.sh

RUN echo "\n[mariadb]\nbind-address=0.0.0.0\nport=3306\n" >> /etc/mysql/my.cnf
RUN echo "socket=/var/lib/mysql/mysql.sock\n" >> /etc/mysql/my.cnf

RUN mariadb.sh
EXPOSE 3306

# ENTRYPOINT [ "mariadb.sh" ]
# CMD [ "mysqld_safe" ]

ENTRYPOINT [ "mysqld_safe" ]
