#bin/bash

MYSQL_HOST_NAME=tools.globalwinner.com
MYSQL_HOST_PORT=3306

docker run --name phpmyadmin -d -e PMA_HOST=$MYSQL_HOST_NAME -e PMA_PORT=$MYSQL_HOST_PORT -p 8080:80 phpmyadmin/phpmyadmin
