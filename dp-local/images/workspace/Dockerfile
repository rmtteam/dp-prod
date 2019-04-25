FROM php:7.2-fpm

LABEL name="DP Workspace" \
    vendor="delivery-parts.ru"

RUN export DEBIAN_FRONTEND=noninteractive \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        ssh-client \
        curl \
        libmemcached-dev \
        libz-dev \
        libpq-dev \
        libjpeg-dev \
        libpng-dev \
        libzip-dev \
        libfreetype6-dev \
        libssl-dev \
        libmcrypt-dev \
        zlib1g-dev \
        libicu-dev \
        g++ \
        jpegoptim \
        optipng \
        pngquant \
        gifsicle \
        libmagickwand-dev \
        imagemagick \
        librabbitmq-dev \
        git \
        nano \
        ca-certificates \
        wget \
        ssh-client \
        iputils-ping \
    && apt-get clean
