FROM eclipse-temurin:21-jre

WORKDIR /server

COPY server.jar server.jar

EXPOSE 25565

CMD ["java", "-Xmx1G", "-jar", "server.jar"]
