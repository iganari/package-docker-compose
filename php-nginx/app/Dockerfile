FROM php:7.2.5-fpm-alpine3.7

MAINTAINER iganari

# for connect db
RUN docker-php-ext-install pdo_mysql mysqli mbstring

# setting timezone
RUN apk --update add tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*

# ADD PHP setting
ADD ./usr/local/etc/php-fpm.conf /usr/local/etc/php-fpm.conf
ADD ./usr/local/etc/php-fpm.d    /usr/local/etc/php-fpm.d
