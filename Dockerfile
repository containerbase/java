# renovate: datasource=adoptium-java depName=java
ARG JAVA_VERSION=8.0.302+8

FROM ghcr.io/containerbase/buildpack:1.15.0@sha256:e506454ba201d52df4d75fdf2b21f2c54a92dce501f512427c54680c6cbd3bb7

ARG JAVA_VERSION
RUN install-tool java

LABEL org.opencontainers.image.source="https://github.com/containerbase/java" \
      org.opencontainers.image.version="${JAVA_VERSION}"

USER 1000
