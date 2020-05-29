FROM debian:sid-slim

RUN apt-get update && \
    apt-get install -y curl && \
    apt-get install -y jq && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*

ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8

COPY release.sh update_package_versioning.sh .autorc \
    /root/

ENTRYPOINT [ "bash", "/root/release.sh" ]
