FROM php:8.0-apache

ARG PUID
ARG PGID

RUN echo "PGID É: $PGID"
RUN addgroup --gid $PGID user
RUN adduser --disabled-password --gecos '' --uid $PUID --gid $PGID user

RUN apt update \
    && apt install -y \
        g++ \
        libicu-dev \
        libpq-dev \
        libzip-dev \
        zlib1g-dev \
        git \
    && docker-php-ext-install \
        intl \
        opcache \
        pdo \
        pdo_mysql \
        mysqli

WORKDIR /var/www/desafio

RUN curl -sS http://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
USER user