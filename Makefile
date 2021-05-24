install:
	docker-compose build
	docker-compose run php composer install

start:
	docker-compose up -d

stop:
	docker-compose down --remove-orphans

phpstan:
	docker-compose exec php composer phpstan

cs-check:
	docker-compose exec php composer cs:check

cs-fix:
	docker-compose exec php composer cs:fix

run-tests:
	docker-compose exec php composer cs:check --quiet
	docker-compose exec php composer test


