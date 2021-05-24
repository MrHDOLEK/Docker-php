FROM php:8.0.1-fpm


WORKDIR /var/www/html

RUN apt-get update && apt-get install -y \
        libpng-dev \
        zlib1g-dev \
        libxml2-dev \
        libzip-dev \
        libonig-dev \
        zip \
        curl \
        unzip \
        libpq-dev \
        ssh \
        git \
        sudo \
    && docker-php-ext-configure gd \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install zip \
    && docker-php-ext-install pdo \
    # mysql
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install mysqli \
    # postgres
    # && docker-php-ext-install pgsql \
    # && docker-php-ext-install pdo_pgsql \
    && docker-php-source delete


RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN chown -R www-data:www-data /var/www

ENTRYPOINT  docker-php-entrypoint php-fpm