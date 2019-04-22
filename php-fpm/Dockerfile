FROM miaoxing/php-fpm-base:latest

# Install FFMPEG
RUN apt-get update \
    && apt-get -y --allow-downgrades --allow-remove-essential --allow-change-held-packages -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" \
    --no-install-recommends install ffmpeg

# Use recommended production ini and remove unused configuration
RUN mv /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini \
    && rm /usr/local/etc/php/conf.d/laravel.ini \
    && rm /usr/local/etc/php-fpm.d/xlaravel.pool.conf

COPY miaoxing.ini /usr/local/etc/php/conf.d/miaoxing.ini
COPY miaoxing.conf /usr/local/etc/php-fpm.d/miaoxing.conf

# Clean apt
RUN apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
