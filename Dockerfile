# Docker microimage for ledger based on Alpine Linux.
FROM alpine:edge
# Add the edge repository, use global Alpine CDN mirror.
RUN echo "https://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
  apk update && \
  apk upgrade && \
  apk add ledger

ENTRYPOINT [ "/usr/bin/ledger" ]
