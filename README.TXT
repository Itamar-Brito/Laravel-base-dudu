#Instalation
docker-compose up

aguarde no terminal
dudu-php | [23-Jun-2022 04:37:36] NOTICE: ready to handle connections

depois edite o arquivo .env da pasta src pelo VScode

DB_CONNECTION=mysql
DB_HOST=db
DB_PORT=3306
DB_DATABASE=dudu_db
DB_USERNAME=root
DB_PASSWORD=root

estando na pasta do proj use o terminal para:
docker-compose exec php bash            >> para entrar no terminal do container
cd src                                  >> para entrar no proj laravel
php artisan migrate

acesse 
http://localhost:9000/