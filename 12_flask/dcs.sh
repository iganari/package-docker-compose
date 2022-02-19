#!/bin/bash
# ref: https://gist.github.com/iganari/5bd2c315d5705545c10b998ec56da43e

# set -x

# See how we were called
case "${1}" in
    up)
        echo "[EXECUTE] docker-compose up --detach"
        docker-compose up --detach
        ;;
    re-up)
        echo "[EXECUTE] docker-compose up --detach --build"
        docker-compose up --detach --build
        ;;
    stop)
        echo "[EXECUTE] docker-compose stop"
        docker-compose stop
        ;;
    down)
        echo "[EXECUTE] docker-compose down"
        docker-compose down
        ;;
    build)
        echo "[EXECUTE] docker-compose build"
        docker-compose build
        ;;
    delete)
        echo "[EXECUTE] docker-compose stop && docker-compose rm -f"
        docker-compose stop
        docker-compose rm -f
        ;;
    status)
        echo "[EXECUTE] docker-compose status"
        docker-compose ps
        ;;
    *)
        echo "Usage: $(basename $0) {up|re-up|stop|down|build|status}"
        exit 1
esac
