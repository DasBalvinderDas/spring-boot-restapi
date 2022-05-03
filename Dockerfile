FROM openjdk:8-jdk-alpine
WORKDIR spring-boot-restapi
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]