FROM php:7.1.9-apache

COPY php.ini /usr/local/etc/php

RUN docker-php-ext-configure pdo_mysql && docker-php-ext-install pdo_mysql
RUN ln -s /usr/src/php/ext/pdo_mysql/modules/pdo_mysql.so /usr/local/lib/php/extensions/no-debug-non-zts-20160303/pdo_mysql

EXPOSE 80
