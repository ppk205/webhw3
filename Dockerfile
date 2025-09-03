FROM maven:3.9.9-eclipse-temurin-21 AS build
WORKDIR /app

# Copy pom.xml trước để cache dependency
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Copy source và build WAR
COPY src ./src
RUN rm -rf target && mvn clean package -U -DskipTests

#Stage 2: Build
FROM tomcat:9.0-jdk21-temurin

WORKDIR /usr/local/tomcat

RUN sed -i 's/port="8005"/port="-1"/' conf/server.xml
RUN rm -rf webapps/*

COPY target/*.war webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
