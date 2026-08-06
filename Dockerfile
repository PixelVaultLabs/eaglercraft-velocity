FROM eclipse-temurin:25-jre

WORKDIR /server

COPY server.jar .

COPY plugins ./plugins

CMD ["java", "-Xmx1G", "-jar", "server.jar"]
