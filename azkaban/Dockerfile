FROM openjdk:8-jdk

WORKDIR /app

# javafx
RUN apt-get update && apt-get install -y --no-install-recommends openjfx && rm -rf /var/lib/apt/lists/*

RUN git clone -b 3.90.0 https://github.com/azkaban/azkaban.git && \
    cd azkaban; ./gradlew build installDist

ENTRYPOINT [ "cd azkaban/azkaban-solo-server/build/install/azkaban-solo-server; bin/start-solo.sh" ]

EXPOSE 8081
