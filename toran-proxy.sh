#!/bin/sh
#
# install toran proxy:
# https://toranproxy.com/
#
# Note that you need a license for this!

wget https://toranproxy.com/releases/toran-proxy-v1.1.6.tgz -O /tmp/toran-proxy.tgz
mkdir -p /var/www
cd /var/www
tar xzf /tmp/toran-proxy.tgz
cd toran
cp app/config/parameters.yml.dist app/config/parameters.yml
# tweak config
