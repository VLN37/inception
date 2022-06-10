ARGS ?=

up:
	docker-compose -f ./srcs/docker-compose.yml up -d $(ARGS)

down:
	docker-compose -f ./srcs/docker-compose.yml down

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
