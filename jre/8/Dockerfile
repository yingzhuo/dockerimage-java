FROM registry.cn-shanghai.aliyuncs.com/yingzhuo/alpine

LABEL maintainer="应卓 <yingzhor@gmail.com>"

ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
ENV PATH=$PATH:$JAVA_HOME/bin

RUN addgroup -g 1002 -S java && \
    adduser  -u 1002 -S java -G java && \
    apk add --update bash ca-certificates openjdk8-jre font-adobe-100dpi ttf-dejavu fontconfig && \
    mkdir -p /var/log/ && chown java:java /var/log && \
    mkdir -p /var/data/ && chown java:java /var/data && \
    mkdir -p /home/java/log/ && chown java:java /home/java/log/ && \
    mkdir -p /home/java/data/ && chown java:java /home/java/data/ && \
    mkdir -p /home/java/config/ && chown java:java /home/java/config/ && \
    mkdir -p /home/java/tmp/ && chown java:java /home/java/tmp/ && \
    rm -rf /var/cache/apk/* && \
    rm -rf "$JAVA_HOME/man/" && \
    rm -rf "$JAVA_HOME/demo/" && \
    rm -rf "$JAVA_HOME/release" && \
    rm -rf "$JAVA_HOME/THIRD_PARTY_README" && \
    rm -rf "$JAVA_HOME/ASSEMBLY_EXCEPTION" && \
    rm -rf "$JAVA_HOME/LICENSE" && \
    rm -rf "$JAVA_HOME/README" && \
    rm -rf "$JAVA_HOME/jre/ASSEMBLY_EXCEPTION" && \
    rm -rf "$JAVA_HOME/jre/LICENSE" && \
    rm -rf "$JAVA_HOME/jre/THIRD_PARTY_README" && \
    rm -rf "$JAVA_HOME/lib/missioncontrol" && \
    rm -rf "$JAVA_HOME/lib/visualvm" && \
    rm -rf "$JAVA_HOME/lib/*javafx*" && \
    rm -rf "$JAVA_HOME/jre/lib/plugin.jar" && \
    rm -rf "$JAVA_HOME/jre/lib/ext/jfxrt.jar" && \
    rm -rf "$JAVA_HOME/jre/bin/javaws" && \
    rm -rf "$JAVA_HOME/jre/lib/javaws.jar" && \
    rm -rf "$JAVA_HOME/jre/lib/desktop" && \
    rm -rf "$JAVA_HOME/jre/plugin" && \
    rm -rf "$JAVA_HOME/jre/lib/deploy*" && \
    rm -rf "$JAVA_HOME/jre/lib/*javafx*" && \
    rm -rf "$JAVA_HOME/jre/lib/*jfx*" && \
    rm -rf "$JAVA_HOME/jre/lib/amd64/libdecora_sse.so" && \
    rm -rf "$JAVA_HOME/jre/lib/amd64/libprism_*.so" && \
    rm -rf "$JAVA_HOME/jre/lib/amd64/libfxplugins.so" && \
    rm -rf "$JAVA_HOME/jre/lib/amd64/libglass.so" && \
    rm -rf "$JAVA_HOME/jre/lib/amd64/libgstreamer-lite.so" && \
    rm -rf "$JAVA_HOME/jre/lib/amd64/libjavafx*.so" && \
    rm -rf "$JAVA_HOME/jre/lib/amd64/libjfx*.so"

WORKDIR /home/java