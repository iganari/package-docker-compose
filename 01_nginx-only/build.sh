#!/bin/bash

set -x

# c_dir=`basename $(pwd) | sed s'/-//'g`
c_dir=`basename $(pwd)`

docker-compose stop
docker-compose rm -f
docker-compose build --no-cache
docker-compose up -d --remove-orphans
docker ps 
