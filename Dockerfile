# renovate: datasource=adoptium-java depName=java
ARG JAVA_VERSION=8.0.322+6

FROM ghcr.io/containerbase/buildpack:3.3.2@sha256:4f8eff01e9047038306008122e57e0f65c012235c8638203b41a22500809af04

ARG JAVA_VERSION
RUN install-tool java

LABEL org.opencontainers.image.source="https://github.com/containerbase/java" \
      org.opencontainers.image.version="${JAVA_VERSION}"

USER 1000
