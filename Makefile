build:
	docker compose build

up:
	# Build and start the containers in the background
	docker compose up -d

down:
	docker compose down

rebuild: down build up

nuke:
	# Very destructive use with caution
	docker system prune -a
	docker volume prune -a

test-flow:
	.venv/bin/python test-flow.py