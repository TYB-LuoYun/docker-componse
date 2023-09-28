#!/bin/sh

if [ -f '/etc/nginx/target/nginx.conf' ]; then
  echo "Copying /etc/nginx/target/nginx.conf to /etc/nginx/nginx.conf"
  cp /etc/nginx/target/nginx.conf /etc/nginx/nginx.conf
elif [ -f '/etc/nginx/current/nginx.conf' ]; then
  echo "Copying /etc/nginx/current/nginx.conf to /etc/nginx/nginx.conf"
  cp /etc/nginx/current/nginx.conf /etc/nginx/nginx.conf
else
  echo "No custom nginx.conf found, using default configuration."
fi

# 启动Nginx
exec nginx -g 'daemon off;'
