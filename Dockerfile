FROM alpine:latest
FROM openjdk:11

RUN apk --update add --virtual build_deps \
    build-base \
    libc-dev \
    linux-headers \
    cmake \
    && apk --no-cache add icu-dev libressl-dev \
    && gem install github-linguist \
    && apk del build_deps build-base libc-dev linux-headers cmake

CMD ["github-linguist"][]
