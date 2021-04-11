FROM openjdk:8-jdk-alpine
RUN mkdir -p /app
COPY target/hello-world-0.1.0.jar /app/
EXPOSE 8085
ENTRYPOINT ["java","-Dserver.port=8085","-jar","/app/hello-world-0.1.0.jar"]
