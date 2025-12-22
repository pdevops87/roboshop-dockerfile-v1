FROM       docker.io/redhat/ubi9
ADD        https://roboshop-artifacts.s3.amazonaws.com/frontend-v3.zip  /tmp/frontend.zip
ADD        /tmp/frontend.zip  /usr/share/nginx/html/



#   in ADD instruction we are not using any tool "curl" and "tar" to download the url and not to unzip