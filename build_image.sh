image_name=$1
docker build -t $image_name .
docker ps
docker ps -a
container_id=docker create $image_name
docker start $container_id
