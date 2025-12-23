FROM       docker.io/redhat/ubi9
RUN        dnf install unzip -y
RUN        mkdir -p /usr/share/nginx/html
ADD        https://roboshop-artifacts.s3.amazonaws.com/frontend-v3.zip  /tmp/frontend.zip
WORKDIR    /usr/share/nginx/html/
RUN        unzip /tmp/frontend.zip -d  /usr/share/nginx/html/
CMD ["sleep","100"]



#   in ADD instruction we are not using any tool "curl" and "tar" to download the url and not to unzip
#  here -d is a directory