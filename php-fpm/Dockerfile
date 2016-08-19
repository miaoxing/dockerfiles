FROM phpdockerio/php56-fpm:latest

# Install selected extensions and other stuff
RUN apt-get update \
    && apt-get -y --no-install-recommends install  php5-memcached php5-mysql php5-redis php5-sqlite php5-gd php5-memcache php5-xdebug \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

RUN curl -L https://phar.phpunit.de/phpunit.phar -o /usr/local/bin/phpunit \
    && chmod +x /usr/local/bin/phpunit

WORKDIR "/var/www/miaoxing"