FROM openjdk:8-jdk-alpine
WORKDIR spring-boot-restapi
RUN mvnw clean install 
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]