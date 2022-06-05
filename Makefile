up:
	docker-compose -f ./srcs/docker-compose.yml up -d

down:
	docker-compose -f ./srcs/docker-compose.yml down

clean: down
	docker image prune -f
	docker network prune -f

fclean: clean

re: clean up

restart:
		docker-compose -f ./srcs/docker-compose.yml restart
