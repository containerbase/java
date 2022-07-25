#-------------------------
# renovate rebuild trigger
#-------------------------

# makes lint happy
FROM scratch

# renovate: datasource=adoptium-java depName=java
ENV JAVA_VERSION=8.0.342+7

# renovate: datasource=adoptium-java depName=java
ENV JAVA_VERSION=11.0.16+8
