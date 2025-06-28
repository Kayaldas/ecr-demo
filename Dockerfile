# For Java 11, try this
FROM eclipse-temurin:17-jre-alpine

# Refer to Maven build -> finalName
ARG JAR_FILE=target/ecr-demo-0.0.1-SNAPSHOT.jar

# cd /opt/app
WORKDIR /opt/app

# cp target/spring-boot-web.jar /opt/app/app.jar
COPY ${JAR_FILE} ecr-demo-0.0.1-SNAPSHOT.jar

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","ecr-demo-0.0.1-SNAPSHOT.jar"]