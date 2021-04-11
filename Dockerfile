FROM openjdk:8-jdk-alpine
RUN mkdir -p /app
COPY target/hello-world-*.jar /app/hello-world.jar
EXPOSE 8085
ENTRYPOINT ["java","-Dserver.port=8085","-jar","/app/hello-world.jar"]
