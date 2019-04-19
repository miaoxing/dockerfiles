FROM miaoxing/php-fpm:latest

# Install supervisor
RUN apt-get update \
    && apt-get -y --no-install-recommends install supervisor \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

COPY supervisord.conf /etc/supervisord.conf

CMD ["/usr/bin/supervisord"]
