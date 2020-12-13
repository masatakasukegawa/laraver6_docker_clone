set-up:
	docker-compose up -d
	docker-compose exec application composer install
	docker-compose exec application cp .env.example .env
	docker-compose exec application php artisan key:generate
	docker-compose exec application php artisan migrate --seed