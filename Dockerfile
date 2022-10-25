# renovate: datasource=adoptium-java depName=java
ARG JAVA_VERSION=8.0.352+8

FROM ghcr.io/containerbase/buildpack:4.16.8@sha256:7fbb21fe2441a497b12e1fb3076e6799fcf9a37189906f4500dfff559591eb99

ARG JAVA_VERSION
RUN install-tool java

LABEL org.opencontainers.image.source="https://github.com/containerbase/java" \
      org.opencontainers.image.version="${JAVA_VERSION}"
# Compatibillity
LABEL org.label-schema.vcs-url="https://github.com/containerbase/java" \
      org.label-schema.version="${JAVA_VERSION}"

USER 1000
