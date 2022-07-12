# renovate: datasource=adoptium-java depName=java
ARG JAVA_VERSION=8.0.332+9

FROM ghcr.io/containerbase/buildpack:4.6.4@sha256:de95eb5c8ccf17eba3aa8f0a6f6aa64e3b5c5e14d76a797ff2a07110d254e524

ARG JAVA_VERSION
RUN install-tool java

LABEL org.opencontainers.image.source="https://github.com/containerbase/java" \
      org.opencontainers.image.version="${JAVA_VERSION}"

USER 1000
