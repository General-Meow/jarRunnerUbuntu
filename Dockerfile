FROM ubuntu:16.04
MAINTAINER Paul Hoang 2016-06-26
RUN ["apt-get", "update", "-y"]
RUN ["apt-get", "upgrade", "-y"]

#
# Java container that takes a single jar as a param and runs it. 
# Use this as a base image and set the EXPOSE command to a port that works for yur app
# Use this container for ubuntu based distros
#
RUN ["apt-get", "install", "-y", "openjdk-8-jre"]
RUN mkdir -p /tmp
COPY app.jar /tmp/app.jar
#define this if you need to expose a port
EXPOSE 5551
ENTRYPOINT ["java", "-jar", "/tmp/app.jar"]
