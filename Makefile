ARGS ?=
DOMAIN = "127.0.0.1 jofelipe.42.fr"

up: config
	docker-compose -f ./srcs/docker-compose.yml up -d $(ARGS)

down:
	docker-compose -f ./srcs/docker-compose.yml down

config:
	sudo mkdir -p /home/jofelipe/data/mariadb
	sudo mkdir -p /home/jofelipe/data/wordpress
	sudo chmod 777 /home/jofelipe/data/mariadb
	sudo chmod 777 /home/jofelipe/data/wordpress
	sudo chmod 777 /etc/hosts
	sudo cat /etc/hosts | grep jofelipe || echo $(DOMAIN) >> /etc/hosts
	sudo chmod 644 /etc/hosts

clean: down
	docker image prune -f
	docker network prune -f

fclean: clean
	docker volume rm srcs_wordpress
	docker volume rm srcs_mariadb
	sudo rm -rf /home/jofelipe/data/mariadb/*
	sudo rm -rf /home/jofelipe/data/wordpress/*

re: clean up

restart:
		docker-compose -f ./srcs/docker-compose.yml restart
