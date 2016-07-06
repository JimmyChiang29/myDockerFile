#/bin/bash

PID=$( docker ps -a | grep gitlab | awk {'print $1'})

if [ $PID ]; then
        docker stop $PID && docker rm $PID
fi

docker run -d \
        --hostname git.globalwinner.com \
        --publish 443:443 --publish 80:80 --publish 222:22 \
        --name gitlab \
        --restart always \
        --volume /docker/volumes/gitlab/config:/etc/gitlab \
        --volume /docker/volumes/gitlab/logs:/var/log/gitlab \
        --volume /docker/volumes/gitlab/data:/var/opt/gitlab \
        registry.aliyuncs.com/lab99/gitlab-ce-zh:latest
