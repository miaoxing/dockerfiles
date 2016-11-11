FROM miaoxing/php56-fpm:latest

# Install PHPUnit
RUN curl -L https://phar.phpunit.de/phpunit.phar -o /usr/local/bin/phpunit \
    && chmod +x /usr/local/bin/phpunit

# Install git to clone composer package, nc to detect to MySQL connection status
RUN apt-get update \
    && apt-get -y --no-install-recommends install git netcat php5-xdebug \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install PHPMD with --ignore-violations-on-exit flag support
RUN composer global require "phpmd/phpmd:dev-master#f2467d1729dc12af79a8a834417ed15e7a14f485@dev"

RUN composer global config repositories.phpmd-extension git https://github.com/mi-schi/phpmd-extension.git \
    && composer global require mi-schi/phpmd-extension:4.*

# Install PHP-CS-Fixer
RUN curl -L https://github.com/FriendsOfPHP/PHP-CS-Fixer/releases/download/v1.12.1/php-cs-fixer.phar -o php-cs-fixer \
    && chmod a+x php-cs-fixer \
    && mv php-cs-fixer /usr/local/bin/php-cs-fixer

# Install PHP_CodeSniffer, Miaoxing Coding standards
RUN composer global require "miaoxing/coding-standards:0.9.1" \
    && phpcs --config-set installed_paths ~/.composer/vendor/miaoxing/coding-standards \
    && phpcs -i

ENV PATH="~/.composer/vendor/bin:${PATH}"