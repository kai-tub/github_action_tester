# FROM frapsoft/fish:latest
FROM debian:sid-slim

# RUN apk add --no-cache fish file imagemagick && rm -rf /tmp/* /etc/apk/cache/*
RUN apt update && \
    apt install -y curl && \
    apt install -y jq

ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8

ENTRYPOINT [ "bash release.sh" ]