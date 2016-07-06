#/bin/bash


PID=$(docker ps -a | grep dns | awk '{print $1}')

if [ $PID ]; then
    docker stop $PID  && docker rm $PID
fi

docker run --name dns -d --restart=always \
    --dns=127.0.0.1 \
    --publish 53:53/tcp --publish 53:53/udp --publish 10000:10000/tcp \
    --volume /docker/volumes/dns:/data \
    --env='ROOT_PASSWORD=jk19890209' \
    sameersbn/bind:latest
