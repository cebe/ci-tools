#!/bin/sh

cd /usr/local/bin
curl -sS https://getcomposer.org/installer | php
ln -sf composer.phar composer
cd -
