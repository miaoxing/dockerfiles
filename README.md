# Miaoxing Dockerfiles

- [miaoxing/php56-fpm](https://github.com/miaoxing/dockerfiles/blob/master/php-fpm/Dockerfile) 用于运行
- [miaoxing/build](https://github.com/miaoxing/dockerfiles/blob/master/build/php-fpm/Dockerfile) 用于CI构建
- [miaoxing/deploy](https://github.com/miaoxing/dockerfiles/blob/master/deploy/Dockerfile) 用于运行发布流程
- [miaoxing/git-subrepo](https://github.com/miaoxing/dockerfiles/blob/master/git-subrepo/Dockerfile) 用于CI构建和项目拆分

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
- PHPMD https://github.com/phpmd/phpmd
- phpmd-extension https://github.com/mi-schi/phpmd-extension
- PHP-CS-Fixer https://github.com/FriendsOfPHP/PHP-CS-Fixer
- PHP_CodeSniffer https://github.com/squizlabs/PHP_CodeSniffer
- Miaoxing Coding Standards https://github.com/miaoxing/coding-standards.git
- Node.js v6.6.0
- ESLint https://github.com/eslint/eslint
- htmllint-cli https://github.com/htmllint/htmllint-cli
- CSSLint https://github.com/CSSLint/csslint

### deploy在默认版之外增加

- https://github.com/rocketeers/rocketeer

### git-subrepo版在build版之外增加

- ssh
- git-subrepo https://github.com/ingydotnet/git-subrepo

## TODO

- [ ] 默认版和build版之间加入dev版
- [ ] build版移除php-fpm目录?