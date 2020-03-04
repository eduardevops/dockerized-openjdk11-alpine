# Base image
FROM alpine:latest

# Default to UTF-8 encoding
ENV LANG C.UTF-8

# Configuration variables
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk/jre
ENV PATH $PATH:/usr/lib/jvm/java-11-openjdk/jre/bin:/usr/lib/jvm/java-11-openjdk/bin

# Installi Java
RUN set -x \
	  && apk --no-cache add openjdk11 --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community
