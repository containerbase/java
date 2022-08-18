# renovate: datasource=adoptium-java depName=java
ARG JAVA_VERSION=8.0.345+1

FROM ghcr.io/containerbase/buildpack:4.13.0@sha256:46f4c73cda8fefcdbddcb26714a8a43db6b3489397d931059e3eb3bb4a510377

ARG JAVA_VERSION
RUN install-tool java

LABEL org.opencontainers.image.source="https://github.com/containerbase/java" \
      org.opencontainers.image.version="${JAVA_VERSION}"
# Compatibillity
LABEL org.label-schema.vcs-url="https://github.com/containerbase/java" \
      org.label-schema.version="${JAVA_VERSION}"

USER 1000
