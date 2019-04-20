FROM miaoxing/php-fpm-base:latest

# Install FFMPEG
RUN apt-get update \
    && apt-get --yes --force-yes -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" \
    --no-install-recommends install ffmpeg

# Clean apt
RUN apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
