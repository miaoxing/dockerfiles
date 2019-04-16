FROM phpdockerio/php56-fpm:latest

# Install selected extensions and other stuff
RUN printf "deb http://archive.debian.org/debian/ jessie main\ndeb-src http://archive.debian.org/debian/ jessie main\ndeb http://security.debian.org jessie/updates main\ndeb-src http://security.debian.org jessie/updates main" > /etc/apt/sources.list
RUN apt-get update \
    && apt-get -y --no-install-recommends install php5-memcached php5-mysql php5-redis php5-sqlite php5-gd php5-memcache \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

WORKDIR "/var/www/miaoxing"
