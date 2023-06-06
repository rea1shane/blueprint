FROM openjdk:8

WORKDIR /app

RUN apt-get update && \
    # javafx
    apt-get install -y --no-install-recommends openjfx && \ 
    rm -rf /var/lib/apt/lists/* && \
    # node
    apt-get install -y curl && \
    curl -fsSL https://deb.nodesource.com/setup_8.x | bash - &&\
    apt-get install -y nodejs && \
    curl -L https://www.npmjs.com/install.sh | sh && \
    apt-get install -y npm

RUN git clone -b 3.90.0 https://github.com/azkaban/azkaban.git && \
    cd azkaban; ./gradlew build installDist

ENTRYPOINT [ "cd azkaban/azkaban-solo-server/build/install/azkaban-solo-server; bin/start-solo.sh" ]

EXPOSE 8081
