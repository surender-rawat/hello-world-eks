FROM openjdk:8-jdk-alpine
RUN mkdir -p /app
RUN mv target/hello-world-*.jar target/app.jar
COPY target/app.jar /app/
EXPOSE 8085
ENTRYPOINT ["java","-Dserver.port=8085","-jar","/app/app.jar"]
