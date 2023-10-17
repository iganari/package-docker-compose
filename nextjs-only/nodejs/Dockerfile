ARG _TAG='20.8-alpine3.17'
FROM node:${_TAG}
# https://hub.docker.com/_/node/tags?page=1&name=-alpine

# MAINTAINER iganari

# setting timezone
RUN apk --update add tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*


### https://nextjs.org/learn/basics/create-nextjs-app/setup
RUN mkdir -p /app && \
    cd /app && \
    npx --yes create-next-app@latest nextjs-blog --use-npm --example "https://github.com/vercel/next-learn/tree/main/basics/learn-starter"

WORKDIR /app/nextjs-blog

# cd nextjs-blog
# npm run dev
