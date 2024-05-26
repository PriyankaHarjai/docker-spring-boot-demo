FROM openjdk:22
LABEL authors="priyanka"

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} my-app.jar

ENTRYPOINT ["java", "-jar", "/my-app.jar"]
