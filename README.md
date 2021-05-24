# Docker-php
## How to run ? 
### Mac/Linux
1. `$ Make install`
2. `$ Make start`
3. `$ docker-compose exec php composer create-project laravel/laravel .`
4. `$ cp .env.example .env`

### Windows

1. `docker-compose up`
2. `$ docker-compose exec php composer create-project laravel/laravel .`
3. `$ cp .env.example .env`

## All commands
1. `Make install`
2. `Make start`
3. `Make stop`
4. `Make phpstan`
5. `Make cs-check`
6. `Make cs-fix`
7. `Make run-tests`
