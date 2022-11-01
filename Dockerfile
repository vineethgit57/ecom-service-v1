FROM ruby:2-alpine
FROM alpine:3.16.2
FROM asdasdasdsbhbfb:latest

RUN apk --update add --virtual build_deps \
    build-base \
    libc-dev \
    linux-headers \
    cmake \
    && apk --no-cache add icu-dev libressl-dev \
    && gem install github-linguist \
    && apk del build_deps build-base libc-dev linux-headers cmake

CMD ["github-linguist"][]
