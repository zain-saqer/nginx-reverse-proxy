#!make
include .env
export $(shell sed 's/=.*//' .env)

up:
	@docker stack deploy --compose-file=docker-stack.yml reverse-proxy

down:
	@docker stack down reverse-proxy

logs:
	@docker service logs reverse-proxy_nginx