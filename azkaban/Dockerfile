FROM openjdk:8

WORKDIR /app

RUN git clone -b 3.90.0 https://github.com/azkaban/azkaban.git && \
    cd azkaban; ./gradlew build -x test installDist

ENTRYPOINT [ "cd azkaban/azkaban-solo-server/build/install/azkaban-solo-server; bin/start-solo.sh" ]

EXPOSE 8081
