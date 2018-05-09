FROM nginx:1.13.5-alpine

MAINTAINER iganari

# setting timezone
RUN apk --update add tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*

# ADD NGINX config
ADD ./etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf
ADD ./var/www/html /var/www/html
