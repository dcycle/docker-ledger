# Docker microimage based on Alpine Linux.
FROM alpine:edge
# Add the edge and testing repositories.
RUN echo "http://nl.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
  apk update && \
  apk upgrade && \
  apk add ledger

ENTRYPOINT [ "/usr/bin/ledger" ]
