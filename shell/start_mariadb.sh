#/bin/bash
   MYSQL_ROOT_PASSWORD="jk19890209" 
   docker run -d --name mariadb \
       -h mariadb \
       -p 3306:3306 \
       -e PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin" \
       -e MARIADB_MAJOR="10.1" \
       -e MARIADB_VERSION="10.1.14+maria-1~jessie" \
       -e MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD} \
       -v /User/Jimmy/Docker/mysql.volume:/var/lib/mysql \ 
       mariadb:latest
