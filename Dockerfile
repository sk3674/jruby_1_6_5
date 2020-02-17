FROM ubuntu:18.04
MAINTAINER Kyle Skiven <kskiven@amientertainment.com>

RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y unzip
RUN apt-get install -y openjdk-6-jdk openjdk-6-jre
RUN curl https://repo1.maven.org/maven2/org/jruby/jruby-dist/1.6.5/jruby-dist-1.6.5-bin.zip -o /tmp/jruby-dist-1.6.5-bin.zip
RUN unzip /tmp/jruby-dist-1.6.5-bin.zip -d /tmp/jruby/
RUN /tmp/jruby/jruby-1.6.5/bin/jruby -v
ENV PATH="/tmp/jruby/jruby-1.6.5/bin:${PATH}"
ENV JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
ENV JRE_HOME="/usr/lib/jvm/java-8-openjdk-amd64/jre"
ENV JRUBY_HOME="/tmp/jruby/jruby-1.6.5"
