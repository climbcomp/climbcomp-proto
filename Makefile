.PHONY: bash lint build

bash:
	docker-compose run --rm app bash

lint:
	docker-compose run --rm app prototool lint

build:
	docker-compose run --rm app prototool generate
