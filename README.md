# Miaoxing Dockerfiles

- [miaoxing/nginx](https://github.com/miaoxing/dockerfiles/blob/master/nginx/Dockerfile) 用于运行Web
- [miaoxing/php-fpm](https://github.com/miaoxing/dockerfiles/blob/master/php-fpm) 用于运行Web
- [miaoxing/php-worker](https://github.com/miaoxing/dockerfiles/blob/master/php-worker) 用于运行后端任务

包含扩展/程序

### php-fpm

- PHP 7.3/7.4
- apcu
- exif
- gmp
- imagemagick
- memcached
- opcache
- pcntl
- phpredis
- soap

### php-worker在php-fpm之外增加

- supervisor
