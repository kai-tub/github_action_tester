FROM alpine:edge

RUN apk add --no-cache fish file imagemagick && rm -rf /tmp/* /etc/apk/cache/*

ENV SHELL /usr/bin/fish

ENTRYPOINT [ "fish" ]
