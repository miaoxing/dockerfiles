FROM miaoxing/php56-fpm:latest

# Install rocketeer to deploy project
RUN curl -O http://rocketeer.autopergamene.eu/versions/rocketeer.phar \
    && chmod +x rocketeer.phar \
    && mv rocketeer.phar /usr/local/bin/rocketeer

# Install git and ssh
RUN apt-get update \
    && apt-get -y --no-install-recommends install git openssh-client \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*