# Miaoxing Dockerfiles

- [miaoxing/php56-fpm](https://github.com/miaoxing/dockerfiles/blob/master/php-fpm/Dockerfile) 用于运行
- [miaoxing/php56-fpm:build](https://github.com/miaoxing/dockerfiles/blob/master/build/php-fpm/Dockerfile) 用于CI构建

包含扩展/程序

### 默认版

- memcached
- memcache
- mysql
- redis
- sqlite
- gd

### build在默认版之外增加

- git
- nc
- xdebug
- phpunit
- phpmd
- mi-schi/phpmd-extension

### git-subrepo版

- git
- ssh
- ingydotnet/git-subrepo
