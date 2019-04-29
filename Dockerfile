FROM openjdk:8-jdk-alpine
LABEL maintainer="joaquin"
WORKDIR /workspace
ADD target/Spring*.jar app.jar

ENV port="8761"

ENTRYPOINT exec java -Djava.security.egd=file:/dev/./urandom -jar /workspace/app.jar
EXPOSE 8761