FROM eclipse-temurin:25-jre

WORKDIR /server

COPY server.jar server.jar
COPY velocity.toml velocity.toml
COPY plugins plugins

EXPOSE 25565

CMD ["java", "-Xmx1G", "-jar", "server.jar"]
