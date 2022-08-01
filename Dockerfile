# renovate: datasource=adoptium-java depName=java
ARG JAVA_VERSION=8.0.342+7

FROM ghcr.io/containerbase/buildpack:4.8.1@sha256:6ebdb8f668214cd98c7aee7b92d53603edcbb310b8bed2a9f7eca3d2ab32a74c

ARG JAVA_VERSION
RUN install-tool java

LABEL org.opencontainers.image.source="https://github.com/containerbase/java" \
      org.opencontainers.image.version="${JAVA_VERSION}"
# Compatibillity
LABEL org.label-schema.vcs-url="https://github.com/containerbase/java" \
      org.label-schema.version="${JAVA_VERSION}"

USER 1000
