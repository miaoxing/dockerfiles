FROM debian:jessie

# Fixes some weird terminal issues such as broken clear / CTRL+L
ENV TERM=linux

# Install git, ssh
RUN apt-get update \
    && apt-get -y --no-install-recommends install git openssh-client \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

# Install git-subrepo
RUN git clone https://github.com/ingydotnet/git-subrepo ~/git-subrepo \ # version: 16-08-24
    && echo 'source ~/git-subrepo/.rc' >> ~/.bashrc
    && source ~/.bashrc