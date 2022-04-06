# renovate: datasource=adoptium-java depName=java
ARG JAVA_VERSION=8.0.322+6

FROM ghcr.io/containerbase/buildpack:3.14.1@sha256:b832483d5873e1f367b86017a26f1c8b2a28d5027afd9165e5ae84dbf55608a2

ARG JAVA_VERSION
RUN install-tool java

LABEL org.opencontainers.image.source="https://github.com/containerbase/java" \
      org.opencontainers.image.version="${JAVA_VERSION}"

USER 1000
