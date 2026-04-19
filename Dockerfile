FROM php:8.3-apache

RUN apt-get update && apt-get install -y imagemagick libpng-dev zlib1g-dev && docker-php-ext-install gd mysqli pdo_mysql

ENTRYPOINT ["docker-php-entrypoint"]

WORKDIR /var/www/html

EXPOSE 80

CMD ["apache2-foreground"]
