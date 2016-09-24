FROM miaoxing/php56-fpm:build

# Install git, ssh
RUN apt-get update \
    && apt-get -y --no-install-recommends install openssh-client \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

# Install git-subrepo 16-08-24
RUN git clone https://github.com/ingydotnet/git-subrepo ~/git-subrepo \
    && echo 'source ~/git-subrepo/.rc' >> ~/.bashrc \
    && /bin/bash -c 'source ~/.bashrc'

# Install Node.js v6.6.0
# @link https://github.com/nodejs/docker-node/blob/1c65c4ed3785432fe9e9fa71a26799d86df10de4/6.6/Dockerfile
ENV NPM_CONFIG_LOGLEVEL info
ENV NODE_VERSION 6.6.0

RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz" \
  && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc" \
  && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1 \
  && rm "node-v$NODE_VERSION-linux-x64.tar.xz" \
  && ln -s /usr/local/bin/node /usr/local/bin/nodejs

# Install htmllint-cli
RUN npm install -g htmllint-cli