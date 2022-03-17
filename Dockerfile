# renovate: datasource=adoptium-java depName=java
ARG JAVA_VERSION=8.0.322+6

FROM ghcr.io/containerbase/buildpack:3.12.2@sha256:44db9bd1b00b4971583c71c0bb2c724f44d992a30aee3cfbf871092213ac5c6e

ARG JAVA_VERSION
RUN install-tool java

LABEL org.opencontainers.image.source="https://github.com/containerbase/java" \
      org.opencontainers.image.version="${JAVA_VERSION}"

USER 1000
