FROM               docker.io/FROM maven:3.9-openjdk-17  AS build
RUN                dnf install unzip -y
RUN                mkdir /app
ADD                https://roboshop-artifacts.s3.amazonaws.com/shipping-v3.zip  /tmp/shipping.zip
RUN                unzip /tmp/shipping.zip -d /app/
WORKDIR            /app
RUN               mvn clean package

FROM               docker.io/openjdk:17.0.1-slim-bullseye
COPY               --from=build /app/target/shipping-1.0.jar /shipping.jar
ENTRYPOINT         ["java", "-jar", "/shipping.jar"]

