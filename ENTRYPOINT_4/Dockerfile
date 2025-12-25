FROM               docker.io/redhat/ubi9
RUN                dnf install unzip maven -y
RUN                mkdir /app
ADD                https://roboshop-artifacts.s3.amazonaws.com/shipping-v3.zip  /tmp/shipping.zip
RUN                unzip /tmp/shipping.zip -d /app/
WORKDIR            /app
RUN               mvn clean package
CMD ["sleep","100"]
