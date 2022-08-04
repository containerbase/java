# renovate: datasource=adoptium-java depName=java
ARG JAVA_VERSION=8.0.345+1

FROM ghcr.io/containerbase/buildpack:4.8.2@sha256:bcdcbdc376bea0f072db7f39f2d49d6741994bdb794837279f8a46268d04374c

ARG JAVA_VERSION
RUN install-tool java

LABEL org.opencontainers.image.source="https://github.com/containerbase/java" \
      org.opencontainers.image.version="${JAVA_VERSION}"
# Compatibillity
LABEL org.label-schema.vcs-url="https://github.com/containerbase/java" \
      org.label-schema.version="${JAVA_VERSION}"

USER 1000
