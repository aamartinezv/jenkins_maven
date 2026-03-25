 FROM maven:3.9.14-eclipse-temurin-25-noble AS build

COPY pom.xml .

COPY src ./src

RUN mvn package

FROM eclipse-temurin:25.0.2_10-jre-ubi10-minimal AS run

RUN groupadd app_user && useradd -m -g app_user app_user

WORKDIR /home/app_user

COPY --from=build target/my-app-*.jar ./my-app.jar

USER app_user

CMD ["java", "-jar", "my-app.jar"]

