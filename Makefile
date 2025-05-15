build:
	docker compose build

up:
	docker compose up

down:
	docker compose down

rebuild: down build up

nuke:
	# Very destructive use with caution
	docker system prune -a
	docker volume prune -a