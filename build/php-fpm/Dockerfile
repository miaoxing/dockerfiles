FROM miaoxing/php56-fpm:latest

# Install PHPUnit
RUN curl -L https://phar.phpunit.de/phpunit.phar -o /usr/local/bin/phpunit \
    && chmod +x /usr/local/bin/phpunit

# Install git to clone composer package, nc to detect to MySQL connection status
RUN apt-get update \
    && apt-get -y --no-install-recommends install git netcat php5-xdebug xz-utils \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

ENV PATH ~/.composer/vendor/bin:$PATH

# Install Node.js
# @link https://github.com/nodejs/docker-node/blob/1c65c4ed3785432fe9e9fa71a26799d86df10de4/6.6/Dockerfile
ENV NPM_CONFIG_LOGLEVEL info
ENV NODE_VERSION 11.2.0

RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz" \
  && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1 \
  && rm "node-v$NODE_VERSION-linux-x64.tar.xz" \
  && ln -s /usr/local/bin/node /usr/local/bin/nodejs
