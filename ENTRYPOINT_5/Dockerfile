FROM                   docker.io/node:20-alpine AS build
RUN                    dnf install unzip npm -y
RUN                    mkdir /app
ADD                    https://roboshop-artifacts.s3.amazonaws.com/catalogue-v3.zip  /tmp/catalogue.zip
RUN                    unzip /tmp/catalogue.zip  /app/
WORKDIR                /app
RUN                    npm install


FROM              docker.io/node:20.19.6-slim
COPY              --from=build /app /app
WORKDIR           /app
ENTRYPOINT        ["node","server.js"]

