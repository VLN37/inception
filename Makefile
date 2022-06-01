

up:
	docker-compose -f ./srcs/docker-compose.yml up -d

down:
	docker-compose -f ./srcs/docker-compose.yml down

clean: down
	docker image prune -y
	docker network prune -y

fclean: clean
