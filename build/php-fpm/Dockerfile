FROM miaoxing/php56-fpm:latest

# Install PHPUnit
RUN curl -L https://phar.phpunit.de/phpunit.phar -o /usr/local/bin/phpunit \
    && chmod +x /usr/local/bin/phpunit

# Install git to clone composer package, nc to detect to MySQL connection status
RUN apt-get update \
    && apt-get -y --no-install-recommends install git netcat \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

WORKDIR "/var/www/miaoxing"