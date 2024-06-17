FROM nodered/node-red:latest-18
RUN set -ex && \
    apk add --no-cache \
    chromium
