FROM               docker.io/maven:3.9.12-amazoncorretto-21  AS build
RUN                yum install unzip maven -y
RUN                mkdir /app
ADD                https://roboshop-artifacts.s3.amazonaws.com/shipping-v3.zip  /tmp/shipping.zip
RUN                unzip /tmp/shipping.zip -d /app/
WORKDIR            /app
RUN               mvn clean package

FROM               docker.io/openjdk:17.0.1-slim-bullseye
COPY               --from=build /app/target/shipping-1.0.jar /shipping.jar
ENTRYPOINT         ["java", "-jar", "/shipping.jar"]

