FROM nubomedia/apps-baseimage:v1

MAINTAINER NUBOMEDIA

RUN mkdir /tmp/magic-mirror
ADD kurento-hello-world-6.2.2-SNAPSHOT.zip /tmp/magic-mirror/
RUN cd /tmp/magic-mirror/ && unzip kurento-hello-world-6.2.2-SNAPSHOT.zip
ADD keystore.jks /

EXPOSE 8080

ENTRYPOINT java -jar /tmp/magic-mirror/lib/kurento-hello-world.jar
