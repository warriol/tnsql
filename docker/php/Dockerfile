# docker/php/Dockerfile
FROM php:8.1-fpm
#USER root

# Instalar paquetes básicos
RUN apt-get update && apt-get install -y \
    autoconf \
    libssl-dev \
    zlib1g-dev \
    libzip-dev \
    curl \
    build-essential

# Instalar extensiones PHP
RUN docker-php-ext-install pdo pdo_mysql mysqli zip

# Instalar Memcached
#RUN apt-get install -y -u memcached
#EXPOSE 11211
#ENTRYPOINT ["memcached"]
#CMD ["-m", "128"]

# Instalar extensión Memcached para PHP
#RUN pecl install memcached-3.2.0
#RUN echo "extension=memcached.so" >> /usr/local/etc/php/conf.d/memcached.ini

# Instalar extensión MongoDB para PHP
RUN pecl install mongodb
RUN echo "extension=mongodb.so" >> /usr/local/etc/php/conf.d/mongodb.ini

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
RUN chmod +x /usr/local/bin/install-php-extensions \
    && install-php-extensions mongodb
#USER www-data