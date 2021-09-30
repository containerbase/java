# renovate: datasource=adoptium-java depName=java
ARG JAVA_VERSION=8.0.302+8

FROM ghcr.io/containerbase/buildpack:1.19.0@sha256:2a9bbc66b6c389037dc0bef3a2ac46fd0da6ab475bea27f452a16efb91a3aea9

ARG JAVA_VERSION
RUN install-tool java

LABEL org.opencontainers.image.source="https://github.com/containerbase/java" \
      org.opencontainers.image.version="${JAVA_VERSION}"

USER 1000
