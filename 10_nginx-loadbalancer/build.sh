#!/bin/bash

set -x

docker-compose stop
docker-compose rm -f
docker-compose build --no-cache
docker-compose up -d --remove-orphans
docker-compose ps
