# renovate: datasource=adoptium-java depName=java
ARG JAVA_VERSION=8.0.322+6

FROM ghcr.io/containerbase/buildpack:3.7.4@sha256:a62b5c89f5ffe62bd2703d79d6a430f4a4803ad292bb46da04acbf2ec57bf197

ARG JAVA_VERSION
RUN install-tool java

LABEL org.opencontainers.image.source="https://github.com/containerbase/java" \
      org.opencontainers.image.version="${JAVA_VERSION}"

USER 1000
