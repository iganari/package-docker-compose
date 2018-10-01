ARG _TAG='1.15.4-alpine'
FROM nginx:${_TAG}
# https://hub.docker.com/_/nginx/


MAINTAINER iganari

# setting timezone
RUN apk --update add tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*

# ADD NGINX config
ADD ./etc/nginx/nginx.conf    /etc/nginx/nginx.conf
ADD ./etc/nginx/sites-enabled /etc/nginx/sites-enabled
