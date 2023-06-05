FROM --platform=linux/amd64 gradle:jdk8 as builder

WORKDIR /usr/src

RUN apt install \
    openjfx=8u161-b12-1ubuntu2 \
    libopenjfx-java=8u161-b12-1ubuntu2 \
    libopenjfx-jni=8u161-b12-1ubuntu2 && \
    apt-mark hold \
    openjfx \
    libopenjfx-java \
    libopenjfx-jni

RUN git clone -b 3.90.0 https://github.com/azkaban/azkaban.git && \
    cd azkaban; ./gradlew build installDist

FROM openjdk:8

WORKDIR /app

COPY --from=builder /usr/src/azkaban/azkaban-solo-server .

ENTRYPOINT [ "cd azkaban-solo-server/build/install/azkaban-solo-server; bin/start-solo.sh" ]

EXPOSE 8081
