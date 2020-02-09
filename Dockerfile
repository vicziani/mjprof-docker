FROM adoptopenjdk:13-jre-hotspot
RUN  apt-get update \
     && apt-get install -y unzip \
     && curl -L https://github.com/AdoptOpenJDK/mjprof/releases/download/v1.0.0/mjprof1.0-bin.zip --output /tmp/mjprof1.0-bin.zip \
     && unzip /tmp/mjprof1.0-bin.zip -d /opt \
     && sed -i "1s/sh/bash/" /opt/mjprof1.0/mjprof
WORKDIR /opt/mjprof1.0
ENTRYPOINT ["/opt/mjprof1.0/mjprof"]

