FROM       docker.io/redhat/ubi9
RUN        dnf install unzip -y
RUN        mkdir -p /usr/share/nginx/html
ADD        https://roboshop-artifacts.s3.amazonaws.com/frontend-v3.zip  /tmp/
WORKDIR    /usr/share/nginx/html/
RUN        unzip /tmp/*.zip -d  /usr/share/nginx/html/ && rm -f /tmp/*.zip
CMD ["sleep","100"]



#   in ADD instruction can download url automatically into /tmp but not extract
#  here -d is a directory