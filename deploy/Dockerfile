FROM miaoxing/php56-fpm:latest

# Install rocketeer to deploy project
RUN curl -O http://rocketeer.autopergamene.eu/versions/rocketeer.phar \
    && chmod +x rocketeer.phar \
    && mv rocketeer.phar /usr/local/bin/rocketeer

# Install git and ssh
RUN printf "deb http://archive.debian.org/debian/ jessie main\ndeb-src http://archive.debian.org/debian/ jessie main\ndeb http://security.debian.org jessie/updates main\ndeb-src http://security.debian.org jessie/updates main" > /etc/apt/sources.list
RUN apt-get update \
    && apt-get --yes --force-yes -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" \
    --no-install-recommends install git openssh-client xz-utils apt-transport-https

# Install Node.js
# https://github.com/nodejs/docker-node/blob/1c65c4ed3785432fe9e9fa71a26799d86df10de4/6.6/Dockerfile
ENV NPM_CONFIG_LOGLEVEL info
ENV NODE_VERSION 11.2.0

RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz" \
  && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1 \
  && rm "node-v$NODE_VERSION-linux-x64.tar.xz" \
  && ln -s /usr/local/bin/node /usr/local/bin/nodejs

# Install Yarn
# https://yarnpkg.com/zh-Hans/docs/install#linux-tab
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
 && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
 && apt-get update && apt-get install yarn \
 && yarn --version

# Install Deployer
RUN curl -LO https://deployer.org/deployer.phar \
 && mv deployer.phar /usr/local/bin/dep \
 && chmod +x /usr/local/bin/dep

# Clean apt
RUN apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
