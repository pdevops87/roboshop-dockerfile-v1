FROM               docker.io/redhat/ubi9
RUN                mkdir /app
ADD                https://roboshop-artifacts.s3.amazonaws.com/shipping-v3.zip  /app/
WORKDIR            /app
RUN               mvn clean package
CMD ["sleep","100"]
