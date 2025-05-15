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

create-prefect-profile:
	prefect profile create local-dockerised-prefect
	-prefect profile use local-dockerised-prefect
	prefect config set PREFECT_API_URL="http://0.0.0.0/api"
	prefect config set PREFECT_API_AUTH_STRING="dev:TopSecretPassword2"

test-flow:
	.venv/bin/python test-flow.py