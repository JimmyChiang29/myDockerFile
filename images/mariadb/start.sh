docker run -it --name mariadb --rm \
    --publish 3306:3306 \
    --hostname mysql \
    --env MYSQL_ROOT_PASSWORD=jk19890209 \
    mariadb:latest
