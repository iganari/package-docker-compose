ARG _TAG='1.15.4-alpine'
FROM nginx:${_TAG}
# https://hub.docker.com/_/nginx/

MAINTAINER iganari

# setting timezone
RUN apk --update add tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*

ADD ./etc/nginx/nginx.conf /etc/nginx.conf
ADD ./etc/nginx/conf.d     /etc/nginx/conf.d
