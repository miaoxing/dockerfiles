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
RUN composer global require miaoxing/coding-standards:0.9.1 \
    && ~/.composer/vendor/bin/phpcs --config-set installed_paths ~/.composer/vendor/miaoxing/coding-standards \
    && ~/.composer/vendor/bin/phpcs -i

ENV PATH ~/.composer/vendor/bin:$PATH

# Install Node.js v6.6.0
# @link https://github.com/nodejs/docker-node/blob/1c65c4ed3785432fe9e9fa71a26799d86df10de4/6.6/Dockerfile
ENV NPM_CONFIG_LOGLEVEL info
ENV NODE_VERSION 6.6.0

RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz" \
  && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1 \
  && rm "node-v$NODE_VERSION-linux-x64.tar.xz" \
  && ln -s /usr/local/bin/node /usr/local/bin/nodejs

# Install eslint
RUN npm install -g eslint babel-eslint

# Install htmllint-cli
RUN npm install -g htmllint-cli

# Install csslint
RUN npm install -g csslint