FROM miaoxing/build

# Install ssh
RUN printf "deb http://archive.debian.org/debian/ jessie main\ndeb-src http://archive.debian.org/debian/ jessie main\ndeb http://security.debian.org jessie/updates main\ndeb-src http://security.debian.org jessie/updates main" > /etc/apt/sources.list
RUN apt-get update \
    && apt-get -y --no-install-recommends install openssh-client \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

# Install git-subrepo 16-08-24
RUN git clone https://github.com/ingydotnet/git-subrepo ~/git-subrepo \
    && echo 'source ~/git-subrepo/.rc' >> ~/.bashrc \
    && /bin/bash -c 'source ~/.bashrc'
