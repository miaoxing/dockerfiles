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
- Node.js v6.6.0

### deploy在默认版之外增加

- https://github.com/rocketeers/rocketeer
- Node.js v6.6.0
- yarn

### git-subrepo版在build版之外增加

- ssh
- git-subrepo https://github.com/ingydotnet/git-subrepo

## TODO

- [ ] 默认版和build版之间加入dev版
- [ ] build版移出php-fpm目录?