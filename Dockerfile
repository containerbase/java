# renovate: datasource=adoptium-java depName=java
ARG JAVA_VERSION=8.0.352+8

FROM ghcr.io/containerbase/buildpack:4.16.7@sha256:243e922d833c32129231a0fc30c0f1d152a8cb568d4f89a8ce6391b551090047

ARG JAVA_VERSION
RUN install-tool java

LABEL org.opencontainers.image.source="https://github.com/containerbase/java" \
      org.opencontainers.image.version="${JAVA_VERSION}"
# Compatibillity
LABEL org.label-schema.vcs-url="https://github.com/containerbase/java" \
      org.label-schema.version="${JAVA_VERSION}"

USER 1000
