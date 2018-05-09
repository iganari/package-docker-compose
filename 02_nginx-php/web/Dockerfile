FROM nginx:1.13.5-alpine

MAINTAINER iganari

# setting timezone
RUN apk --update add tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*

# ADD NGINX config
ADD ./etc/nginx/nginx.conf    /etc/nginx/nginx.conf
ADD ./etc/nginx/sites-enabled /etc/nginx/sites-enabled
