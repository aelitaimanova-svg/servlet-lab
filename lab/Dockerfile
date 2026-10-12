FROM maven:3.9-eclipse-temurin-21 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn -q package -DskipTests

FROM tomcat:9.0-jdk21
COPY --from=build /app/target/lab.war /usr/local/tomcat/webapps/lab.war
EXPOSE 8080
