ARG _TAG='1.15.4-alpine'
FROM nginx:${_TAG}
# https://hub.docker.com/_/nginx/

MAINTAINER iganari

# setting timezone
RUN apk --update add tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*

RUN mkdir -p      /srv/www/html && \
    chmod 0777 -R /srv/www/html


# ADD NGINX config
# ADD ./etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf
# ADD ./var/www/html /var/www/html
