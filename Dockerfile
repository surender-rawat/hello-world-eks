FROM openjdk:8-jdk-alpine
COPY target/hello-world-*.jar hello-world.jar
EXPOSE 8085
ENTRYPOINT ["java","-Dserver.port=8085","-jar","/hello-world.jar"]