FROM eclipse-temurin:25-jre

WORKDIR /server

COPY server.jar /server/server.jar
COPY velocity.toml /server/velocity.toml
COPY plugins /server/plugins

EXPOSE 25565

CMD ["java", "-Xmx1G", "-jar", "server.jar", "--config", "velocity.toml"]
