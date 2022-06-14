# renovate: datasource=adoptium-java depName=java
ARG JAVA_VERSION=8.0.332+9

FROM ghcr.io/containerbase/buildpack:4.3.0@sha256:060fbf7bb736ecde6f166da6b1bb8416fef930e1a496b39a711b33848b2d8997

ARG JAVA_VERSION
RUN install-tool java

LABEL org.opencontainers.image.source="https://github.com/containerbase/java" \
      org.opencontainers.image.version="${JAVA_VERSION}"

USER 1000
