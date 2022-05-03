# renovate: datasource=adoptium-java depName=java
ARG JAVA_VERSION=8.0.332+9

FROM ghcr.io/containerbase/buildpack:3.16.0@sha256:5d460046b636c652391853caf7a489c0bb408c7f1d86c8ce704a096f0b79845f

ARG JAVA_VERSION
RUN install-tool java

LABEL org.opencontainers.image.source="https://github.com/containerbase/java" \
      org.opencontainers.image.version="${JAVA_VERSION}"

USER 1000
