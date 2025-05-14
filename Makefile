build:
	docker compose build

up:
	docker compose up

down:
	docker compose down

rebuild: down build up

prune:
	docker system prune -a