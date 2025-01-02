# Docker microimage for ledger based on Alpine Linux.
FROM alpine:edge
# Add the edge repository, use global Alpine CDN mirror.
RUN echo "https://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
  apk update && \
  apk upgrade && \
  apk add --no-cache python3 py3-pip ledger

ENTRYPOINT [ "/usr/bin/ledger" ]
