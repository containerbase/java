# renovate: datasource=adoptium-java depName=java
ARG JAVA_VERSION=8.0.322+6

FROM ghcr.io/containerbase/buildpack:3.7.3@sha256:fe182cbe5038cdb1f9378a9c22ba18af4836b670c76e664e848167f14487b1d9

ARG JAVA_VERSION
RUN install-tool java

LABEL org.opencontainers.image.source="https://github.com/containerbase/java" \
      org.opencontainers.image.version="${JAVA_VERSION}"

USER 1000
