FROM --platform=linux/arm64 nodered/node-red:latest-18
LABEL org.opencontainers.image.source="https://github.com/csobrinho/node-red-chromium"

USER root
RUN set -ex && \
    apk add --no-cache \
    chromium

USER node-red
