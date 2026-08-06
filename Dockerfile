FROM eclipse-temurin:25-jre

WORKDIR /server

COPY server.jar server.jar

EXPOSE 25565

CMD ["java", "-Xmx1G", "-jar", "server.jar"]
