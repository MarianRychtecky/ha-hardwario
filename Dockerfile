ARG BUILD_FROM
FROM $BUILD_FROM

WORKDIR /data
# Install requirements for add-on
RUN \
  apk add --no-cache \
    python3 py3-pip
RUN pip3 install --no-cache-dir bcg
ADD run.sh /run.sh
RUN chmod a+x /run.sh
CMD ["/run.sh"]

ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_REF
ARG BUILD_VERSION

# Labels
LABEL \
    io.hass.name="ha-hardwario" \
    io.hass.description="home assistant ha-hardwario add-on" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="MarianRychtecky" \
    org.label-schema.description="Home Assistant ha-hardwario add-on" \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.name="ha-hardwario" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.url="https://github.com/MarianRychtecky/ha-hardwario" \
    org.label-schema.usage="https://github.com/MarianRychtecky/ha-hardwario/README.md" \
    org.label-schema.vcs-ref=${BUILD_REF} \
    org.label-schema.vcs-url="https://github.com/MarianRychtecky/ha-hardwario" \
    org.label-schema.vendor="Hass.io Addons"
