FROM maven:3.9.8-eclipse-temurin-17 AS builder
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests
FROM tomcat:9.0-jdk17-temurin
WORKDIR /usr/local/tomcat
RUN rm -rf webapps/*
COPY --from=builder /app/target/*.war webapps/MyWebApp.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
