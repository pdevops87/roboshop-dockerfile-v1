FROM                   docker.io/node:20-alpine AS build
RUN                    apk add --no-cache unzip npm
RUN                    mkdir /app
ADD                    https://roboshop-artifacts.s3.amazonaws.com/catalogue-v3.zip  /tmp/catalogue.zip
RUN                    unzip /tmp/catalogue.zip  -d /app/
WORKDIR                /app
RUN                    npm install


FROM              docker.io/node:20.19.6-slim
RUN               apt update && \
                  apt install -y curl
COPY              --from=build /app /app
WORKDIR           /app
ENTRYPOINT        ["node","server.js"]


# know about OS
# cat /etc/*release
# based on that OS use package manager

