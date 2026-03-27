FROM maven:eclipse-temurin

COPY /home/runner/work/simple-java-maven-app/simple-java-maven-app/target/my-app-1.0.0.jar app.jar

CMD [ "java", "-jar",  "app.jar"]
