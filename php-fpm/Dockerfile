FROM miaoxing/php-fpm-base:latest

# Use recommended production ini
RUN mv /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini \
    && rm /usr/local/etc/php/conf.d/laravel.ini

COPY miaoxing.ini /usr/local/etc/php/conf.d/miaoxing.ini

# Install FFMPEG
RUN apt-get update \
    && apt-get -y --allow-downgrades --allow-remove-essential --allow-change-held-packages -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" \
    --no-install-recommends install ffmpeg

# Clean apt
RUN apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
