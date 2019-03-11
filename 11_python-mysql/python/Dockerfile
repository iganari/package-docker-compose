ARG _TAG='3.7.2-alpine3.9'
FROM python:${_TAG}

ADD   . /var/tmp
WORKDIR /vat/tmp
RUN pip install -r /var/tmp/requirements.txt


### [tmp] Develop tools
RUN apk update &&\
    apk add vim \
            mysql-client \
            curl && \
    rm -rf /var/cache/apk/*

### ADD My vimrc
RUN curl https://gist.githubusercontent.com/iganari/a2baec1af976425cc8e21ccd68cf5585/raw/b6fce2cc91e1c77da759af1d2ea7b771b597787f/_vimrc -o /root/.vimrc
