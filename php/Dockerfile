FROM php:7.2-fpm

RUN apt-get update && apt-get install -y \
        curl \
        wget \
        git \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libxslt-dev \
        libicu-dev \
        libmcrypt-dev \
        libpng-dev \
        libxml2-dev \
        zlib1g-dev \
        g++ \
        unzip \
        mysql-client \
    \
    && docker-php-ext-install -j$(nproc) iconv mbstring mysqli pdo_mysql zip \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd

# ICU - intl requirements for Symfony
# Debian is out of date, and Symfony expects the latest - so build from source, unless a better alternative exists(?)
RUN curl -sS -o /tmp/icu.tar.gz -L http://download.icu-project.org/files/icu4c/62.1/icu4c-62_1-src.tgz \
    && tar -zxf /tmp/icu.tar.gz -C /tmp \
    && cd /tmp/icu/source \
    && ./configure --prefix=/usr/local \
    && make \
    && make install

RUN docker-php-ext-configure intl --with-icu-dir=/usr/local \
    && docker-php-ext-install intl

RUN docker-php-ext-install xsl
RUN docker-php-ext-install soap

RUN apt-get update && apt-get install -y \
        libmagickwand-dev --no-install-recommends

RUN pecl install imagick && docker-php-ext-enable imagick

RUN pecl install apcu \
    && docker-php-ext-enable apcu

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

RUN docker-php-ext-install opcache

RUN docker-php-ext-install pcntl

RUN curl --location --output /usr/local/bin/mhsendmail https://github.com/mailhog/mhsendmail/releases/download/v0.2.0/mhsendmail_linux_amd64 \
    && chmod +x /usr/local/bin/mhsendmail

RUN echo 'sendmail_path="/usr/local/bin/mhsendmail --smtp-addr=mailhog:1025"' > /usr/local/etc/php/conf.d/mailhog.ini

ADD php.ini /usr/local/etc/php/conf.d/40-custom.ini

COPY xdebug.ini /usr/local/etc/php/conf.d/

WORKDIR /var/www

CMD ["php-fpm"]
