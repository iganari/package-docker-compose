#!/bin/bash
# ref: https://gist.github.com/iganari/5bd2c315d5705545c10b998ec56da43e

# set -x

# See how we were called
case "${1}" in
    start)
        echo "docker-compose up"
        docker-compose up -d
        ;;
    stop)
        echo "docker-compose stop"
        docker-compose stop
        ;;
    down)
        echo "docker-compose down"
        docker-compose down
        ;;
    build)
        echo "docker-compose build"
        docker-compose build
        ;;
    status)
        echo "docker-compose status"
        docker-compose ps
        ;;
    *)
        echo "Usage: $(basename $0) {start|stop|down|build|status}"
        exit 1
esac
