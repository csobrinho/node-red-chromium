FROM --platform=linux/arm64 nodered/node-red:latest-18
LABEL org.opencontainers.image.source="https://github.com/csobrinho/node-red-chromium"

# Install chromium browser for headless access.
USER root
RUN set -ex && \
    apk add --no-cache \
    chromium

# Setup a secondary shared media volume.
RUN mkdir /media/shared
RUN chown node-red:node-red /media/shared
VOLUME /media/shared

# Restore the user.
USER node-red
