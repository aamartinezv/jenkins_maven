FROM maven:eclipse-temurin

WORKDIR /project
COPY target/my-app-1.0.0.jar app.jar

CMD [ "java", "-jar",  "app.jar"]
