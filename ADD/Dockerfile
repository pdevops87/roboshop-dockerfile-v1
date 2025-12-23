FROM       docker.io/redhat/ubi9
RUN        dnf install unzip -y
RUN        mkdir -p /usr/share/nginx/html
ADD        https://roboshop-artifacts.s3.amazonaws.com/frontend-v3.zip  /tmp/
WORKDIR    /usr/share/nginx/html/
RUN        unzip /tmp/frontend.zip -d  /usr/share/nginx/html/
CMD ["sleep","100"]



#   in ADD instruction can download url automatically into
#  here -d is a directory