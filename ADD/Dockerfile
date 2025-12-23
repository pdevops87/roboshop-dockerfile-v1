FROM       docker.io/redhat/ubi9
RUN        mkdir -p /usr/share/nginx/html
ADD        https://roboshop-artifacts.s3.amazonaws.com/frontend-v3.zip  /tmp/frontend.zip
WORKDIR    /usr/share/nginx/html/
ADD        /tmp/frontend.zip  /usr/share/nginx/html/
CMD ["sleep","100"]



#   in ADD instruction we are not using any tool "curl" and "tar" to download the url and not to unzip