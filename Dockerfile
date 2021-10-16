# renovate: datasource=adoptium-java depName=java
ARG JAVA_VERSION=8.0.302+8

FROM ghcr.io/containerbase/buildpack:1.19.4@sha256:5af93f8cfc1fe1378716184661981c2dbe8a3519ca546da7dfc85ad70e2f066c

ARG JAVA_VERSION
RUN install-tool java

LABEL org.opencontainers.image.source="https://github.com/containerbase/java" \
      org.opencontainers.image.version="${JAVA_VERSION}"

USER 1000
