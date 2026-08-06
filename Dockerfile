FROM eclipse-temurin:25-jre

WORKDIR /server

COPY server.jar .
COPY velocity.toml .
COPY plugins ./plugins

RUN echo "===== VELOCITY CONFIG CHECK =====" && cat velocity.toml

EXPOSE 25565

CMD ["java", "-Xmx1G", "-jar", "server.jar"]
