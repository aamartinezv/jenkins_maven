FROM maven:3.9.14-eclipse-temurin-21-alpine AS build

WORKDIR /app

COPY pom.xml .
COPY src/ ./src/

RUN mvn clean install

FROM eclipse-temurin:21

WORKDIR /app
COPY --from=build /app/target/*.jar app.jar

CMD [ "java", "-jar",  "app.jar"]
