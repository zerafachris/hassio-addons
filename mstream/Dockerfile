ARG BUILD_FROM
ARG BUILD_VERSION
FROM ${BUILD_FROM}
ARG BASHIO_VERSION=0.13.1

# Copy root filesystem
VOLUME [ "/config" ]
ENV TZ=Europe/Paris

RUN \
    ###############################
    # Install apps test both dist #
    ###############################
    apt-get clean \
    && apt-get update \
    && apt-get install -y \
    jq \
    curl \
    cifs-utils \
    keyutils \
    samba \
    smbclient \
    || apk add --no-cache \
    jq \
    curl \
    cifs-utils \
    keyutils \
    samba \
    samba-client \
    \ 
    ##################
    # Install bashio #
    ##################
    && mkdir -p /tmp/bashio \
    && curl -L -f -s "https://github.com/hassio-addons/bashio/archive/v${BASHIO_VERSION}.tar.gz" \
    | tar -xzf - --strip 1 -C /tmp/bashio \
    && mv /tmp/bashio/lib /usr/lib/bashio \
    && ln -s /usr/lib/bashio/bashio /usr/bin/bashio \
    && rm -rf /tmp/bashio

# Allow UID and GID setting
RUN sed -i 's/bash/bashio/g' /etc/cont-init.d/10-adduser \
    && sed -i 's/{PUID:-911}/(bashio::config "PUID")/g' /etc/cont-init.d/10-adduser \
    && sed -i 's/{PGID:-911}/(bashio::config "PGID")/g' /etc/cont-init.d/10-adduser

# Correct config folder
RUN grep -rl " /config" /etc/cont-init.d | xargs sed -i 's| /config| /config/mstream|g' || true \
    && grep -rl "/config" /etc/services.d | xargs sed -i 's|/config|/config/mstream|g' || true \
    && sed -i 's=/config/mstream=/config/mstream || true=g' /etc/cont-init.d/10-adduser || true


# copy local files
COPY root/ /

### LABELS
ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_DESCRIPTION
ARG BUILD_NAME
ARG BUILD_REF
ARG BUILD_REPOSITORY
ARG BUILD_VERSION
LABEL \
    io.hass.name="${BUILD_NAME}" \
    io.hass.description="${BUILD_DESCRIPTION}" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="zerafachris (https://github.com/zerafachris)" \
    org.opencontainers.image.title="${BUILD_NAME}" \
    org.opencontainers.image.description="${BUILD_DESCRIPTION}" \
    org.opencontainers.image.vendor="Home Assistant Add-ons" \
    org.opencontainers.image.authors="zerafachris (https://github.com/zerafachris)" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.url="https://github.com/zerafachris" \
    org.opencontainers.image.source="https://github.com/${BUILD_REPOSITORY}" \
    org.opencontainers.image.documentation="https://github.com/${BUILD_REPOSITORY}/blob/main/README.md" \
    org.opencontainers.image.created=${BUILD_DATE} \
    org.opencontainers.image.revision=${BUILD_REF} \
    org.opencontainers.image.version=${BUILD_VERSION}
