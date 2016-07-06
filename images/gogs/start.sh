#/bin/bash



PID=$(docker ps -a | grep  gogs | awk '{print $1}')

if [ $PID ]; then
    docker stop $PID  && docker rm $PID
fi

docker run --name gogs -d --restart=always \
    --publish 10080:3000 --publish 10022:22 \
    --volume /docker/volumes/gogs:/data \
    gogs/gogs:latest
