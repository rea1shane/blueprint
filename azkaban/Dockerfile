FROM openjdk:8

WORKDIR /src

RUN apt-get update && \
    # javafx
    apt-get install -y --no-install-recommends openjfx && \ 
    rm -rf /var/lib/apt/lists/* && \
    # node
    apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs

RUN git clone -b 3.90.0 https://github.com/azkaban/azkaban.git && \
    cd azkaban; ./gradlew build installDist -x test

ENTRYPOINT [ "cd azkaban/azkaban-solo-server/build/install/azkaban-solo-server; bin/start-solo.sh" ]

EXPOSE 8081
