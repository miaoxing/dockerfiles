FROM miaoxing/php-fpm:latest

# Install supervisor, cron
RUN apt-get update \
    && apt-get -y --no-install-recommends install supervisor cron \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

COPY ./supervisord.conf /etc/supervisor/supervisord.conf

CMD ["/usr/bin/supervisord"]
