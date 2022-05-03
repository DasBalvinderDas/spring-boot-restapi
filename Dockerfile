
# Build stage
FROM maven:3.6.0-jdk-11-slim AS build
#WORKDIR spring-boot-restapi
RUN mvn clean install
#ARG JAR_FILE=target/*.jar
#COPY ${JAR_FILE} app.jar

# Run stage
#WORKDIR spring-boot-restapi
ENTRYPOINT ["java","-jar","/app.jar"]