.PHONY: bash
bash:
	docker-compose run --rm app bash

.PHONY: lint
lint:
	docker-compose run --rm app prototool lint

.PHONY: build
build:
	docker-compose run --rm app prototool generate

.PHONY: release
release:
	docker-compose run --rm release ./scripts/release

.PHONY: distribute
distribute:
	docker-compose run --rm app ./scripts/distribute
