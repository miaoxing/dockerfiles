# Miaoxing Dockerfiles

- [miaoxing/php-fpm](https://github.com/miaoxing/dockerfiles/blob/master/php-fpm) 用于运行
- [miaoxing/build](https://github.com/miaoxing/dockerfiles/blob/master/build/Dockerfile) 用于运行CI构建
- [miaoxing/deploy](https://github.com/miaoxing/dockerfiles/blob/master/deploy/Dockerfile) 用于运行发布流程

包含扩展/程序

### php-fpm

- PHP 7.3
- exif
- gmp
- imagemagick
- opcache
- pcntl
- phpredis
- soap

### build在php-fpm之外增加

- git
- Node.js v11.2.0
- yarn
- nc

### deploy在php-fpm之外增加

- git
- Node.js v11.2.0
- yarn
- Deployer
