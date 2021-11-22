ARG BUILD_FROM
ARG BUILD_VERSION
FROM freqtradeorg/freqtrade:latest
ARG BASHIO_VERSION=0.13.1

USER root
COPY rootfs /

RUN \
    ################
    # Install apps #
    ################
    apt-get update \ 
    && apt-get install -y --no-install-recommends jq git \
    && apt-get -y install sudo libatlas3-base curl sqlite3 libhdf5-serial-dev \
    && apt-get -y install build-essential libssl-dev git libffi-dev libgfortran5 pkg-config cmake wget \
    && apt-get -y install gcc autoconf libtool pkg-config make libpython3-dev python3-venv python3-dev python-dev \
    && apt-get clean \
    && pip install --upgrade pip \
    \    
    ###################
    # Install bashio #
    ##################
    && mkdir -p /tmp/bashio \
    && curl -L -f -s "https://github.com/hassio-addons/bashio/archive/v${BASHIO_VERSION}.tar.gz" \
    | tar -xzf - --strip 1 -C /tmp/bashio \
    && mv /tmp/bashio/lib /usr/lib/bashio \
    && ln -s /usr/lib/bashio/bashio /usr/bin/bashio \
    && rm -rf /tmp/bashio

VOLUME [ "/data" ]
WORKDIR /


### "install ta-lib"
RUN chmod -R 777 /freqtrade \
    && wget http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz \
    && tar -zxvf ta-lib-0.4.0-src.tar.gz \
    && cd ta-lib \
    && sed -i.bak "s|0.00000001|0.000000000000000001 |g" src/ta_func/ta_utility.h \
    && curl 'http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD' -o config.guess \
    && curl 'http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD' -o config.sub \
    && ./configure --prefix=${INSTALL_LOC}/ \
    && make \
    && which sudo && sudo make install || make install \
    &&  sudo ldconfig \
    && cd .. && rm -rf ./ta-lib/


RUN chmod 777 /entrypoint.sh
ENTRYPOINT [ "/bin/bash" ]
CMD [ "/entrypoint.sh" ] 

# use /data instead of /config for hass.io environment
#    && sed -i "s|/config|/share/freqtrade|g" /etc/services.d/freqtrade/run \
#&& sed -i "s|/config|/share/freqtrade|g" /etc/cont-init.d/50-config \
#&& sed -i "s|/share/freqtrade/nginx|/config/nginx|g" /etc/cont-init.d/50-config \
#\
# Allow UID and GID setting
#&& sed -i 's/bash/bashio/g' /etc/cont-init.d/10-adduser \
#&& sed -i 's/{PUID:-911}/(bashio::config "PUID")/g' /etc/cont-init.d/10-adduser \
#&& sed -i 's/{PGID:-911}/(bashio::config "PGID")/g' /etc/cont-init.d/10-adduser

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
