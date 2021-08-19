# renovate: datasource=adoptium-java depName=java
ARG JAVA_VERSION=8.0.302+8

FROM ghcr.io/containerbase/buildpack:1.16.0@sha256:5ce3976dae1a51ec8101445b316e24ee5d315d8663d38b877722536813a773e4

ARG JAVA_VERSION
RUN install-tool java

LABEL org.opencontainers.image.source="https://github.com/containerbase/java" \
      org.opencontainers.image.version="${JAVA_VERSION}"

USER 1000
