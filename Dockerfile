# Docker microimage based on Alpine Linux.
FROM alpine:3
# Add the edge and testing repositories.
RUN echo "http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories && \
     echo "http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
     apk update && apk upgrade
# Install ledger and dependencies.
RUN apk add ledger

ENTRYPOINT [ "/usr/bin/ledger" ]
