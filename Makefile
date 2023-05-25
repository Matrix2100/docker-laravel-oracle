php81_oci8_laravel:
	ls .env >> /dev/null 2>&1 || \cp .env.example .env
	docker-compose up --build -d php81_oci8_laravel
	make install_dependencies_dev
install_dependencies_dev:
	docker exec php81_oci8_laravel composer install
	docker exec php81_oci8_laravel php artisan 'optimize:clear'
	docker exec php81_oci8_laravel php artisan 'config:cache'
	docker exec php81_oci8_laravel php artisan 'route:cache'
	docker exec php81_oci8_laravel php artisan 'event:cache'
	docker exec php81_oci8_laravel php artisan 'view:cache'
optimize:
	docker exec php81_oci8_laravel php artisan 'optimize'
