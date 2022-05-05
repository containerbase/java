# renovate: datasource=adoptium-java depName=java
ARG JAVA_VERSION=8.0.332+9

FROM ghcr.io/containerbase/buildpack:3.16.2@sha256:8475ca1aa16fdf7e39ed170ce737e766a6044bc793e95464adfcc499c6e3e251

ARG JAVA_VERSION
RUN install-tool java

LABEL org.opencontainers.image.source="https://github.com/containerbase/java" \
      org.opencontainers.image.version="${JAVA_VERSION}"

USER 1000
