# renovate: datasource=adoptium-java depName=java
ARG JAVA_VERSION=8.0.345+1

FROM ghcr.io/containerbase/buildpack:4.16.1@sha256:f1a37c6f8fbaa2852b8adfafde4d4f73916664cf61b0bf652397e6b8370f13ca

ARG JAVA_VERSION
RUN install-tool java

LABEL org.opencontainers.image.source="https://github.com/containerbase/java" \
      org.opencontainers.image.version="${JAVA_VERSION}"
# Compatibillity
LABEL org.label-schema.vcs-url="https://github.com/containerbase/java" \
      org.label-schema.version="${JAVA_VERSION}"

USER 1000
