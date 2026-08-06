FROM eclipse-temurin:25-jre

WORKDIR /server

COPY server.jar .
COPY velocity.toml .
COPY plugins ./plugins

RUN rm -f *.toml

COPY velocity.toml .

CMD ["java", "-Xmx1G", "-jar", "server.jar"]
