#!/bin/bash

cd /tmp

apt-update
apt-get install build-essential tcl

wget http://download.redis.io/releases/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz

cd redis-stable/src
make && make install

cd utils/
source install_server.sh
