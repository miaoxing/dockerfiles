#!/bin/bash

if [[ -e /tmp/crontab ]]; then
  # 解决 crontab 文件权限和所属用户不可控的问题
  # https://github.com/moby/moby/issues/2259
  cp /tmp/crontab /etc/cron.d/crontab
  chmod 0644 /etc/cron.d/crontab
  chown root:root /etc/cron.d/crontab
fi

/usr/bin/supervisord
