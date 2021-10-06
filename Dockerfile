# renovate: datasource=adoptium-java depName=java
ARG JAVA_VERSION=8.0.302+8

FROM ghcr.io/containerbase/buildpack:1.19.3@sha256:01446b3d46c04837461316723fe6acceb306b20c8ea0e0bf2210f7bef8f87e70

ARG JAVA_VERSION
RUN install-tool java

LABEL org.opencontainers.image.source="https://github.com/containerbase/java" \
      org.opencontainers.image.version="${JAVA_VERSION}"

USER 1000
