FROM             docker.io/redhat/ubi9
USER             roboshop
ARG              username
ARG              course
ADD             --chown=${username}:roboshop  sample.txt  /
CMD             ["sleep","100"]



#  build at the time of image creation