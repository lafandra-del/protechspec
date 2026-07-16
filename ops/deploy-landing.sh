#!/bin/sh
set -eu

exec /usr/bin/sudo -n -u www-data \
  /usr/bin/git -C /var/www/landing-tehspec pull --ff-only origin master
