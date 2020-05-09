# Docker microimage based on Alpine Linux.
FROM alpine:3
# Add the edge and testing repositories.
RUN echo "http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories && \
     echo "http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
     apk update && apk upgrade
# Install ledger and dependencies.
RUN apk add ledger

# Set the working directory for the following instructions. It's like 'cd'.
#WORKDIR /app/ledger

# Add the source (1) to the filesystem at the destination (2).
#ADD . /app

ENTRYPOINT [ "/usr/bin/ledger" ]
