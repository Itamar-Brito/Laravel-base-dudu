#!/bin/bash
#On error no such file entrypoint.sh, execute in terminal - dos2unix .docker\entrypoint.sh

if [ ! -d "/src/" ]; then
  composer create-project laravel/laravel src
fi

cd src
if [ ! -f ".env" ]; then
cp .env.example .env
fi

if [ ! -f ".env.testing" ]; then
cp .env.testing.example .env.testing
fi

composer install
php artisan key:generate
php artisan key:generate --env=testing
php artisan migrate
npm install

php-fpm