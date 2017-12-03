.DEFAULT_GOAL := help

build: ## build develoment environment with laradock
	cp .env.example .env
	cp laradock-env laradock/.env
	cd laradock; docker-compose up -d nginx mysql
	cd laradock; docker-compose run workspace php artisan key:generate
	cd laradock; docker-compose run workspace php artisan migrate
	cd laradock; docker-compose run workspace npm install && npm run dev

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
