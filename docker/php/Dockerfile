# docker/php/Dockerfile
FROM php:8.1-fpm

#USER root

# RUN apt-get update --fix-missing -q \
RUN apt-get update

# Instalar las extensiones PDO, PDO MySQL, MySQLi, Memcached
RUN docker-php-ext-install pdo pdo_mysql mysqli

RUN apt-get install -y autoconf pkg-config libssl-dev zlib1g-dev libzip-dev zlib1g  git libssl-dev
# zlibc --with-libzip

RUN apt-get install -y curl mcrypt gnupg build-essential software-properties-common wget vim zip unzip libxml2-dev

RUN apt-get install -y libz-dev libpng-dev libmemcached-tools libmemcached-dev \
    && docker-php-ext-configure zip \
    && docker-php-ext-install zip

# Set the entrypoint to memcached binary
RUN apt-get install -y memcached 
ENTRYPOINT memcached
EXPOSE 11211
# Default Memcached run command arguments
CMD ["-m", "128"]
# Set the user to run Memcached daemon
#USER daemon

RUN pecl install docker-php-ext-configure memcached docker-php-ext-install memcached 
RUN echo "extension=memcached.so" >> /usr/local/etc/php/conf.d/memcached.ini
RUN yes '' | pecl install -f memcached-3.2.0 docker-php-ext-enable memcached

# Instalar las extensiones MongoDB
RUN pecl install mongodb
RUN echo "extension=mongodb.so" >> /usr/local/etc/php/conf.d/mongodb.ini

#USER www-data