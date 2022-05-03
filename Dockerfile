FROM openjdk:8-jdk-alpine
RUN cd spring-boot-restapi
RUN chmod 700 mvnw
RUN mvnw clean install 
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]