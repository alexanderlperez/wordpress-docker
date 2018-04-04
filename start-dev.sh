#!/bin/bash

PREFIX=docker

echo "Waiting for Mysql to load.."

docker stop ${PREFIX}-mysql
docker rm ${PREFIX}-mysql
docker run --name ${PREFIX}-mysql -itd -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 -v `pwd`/mysql-data:/var/lib/mysql mysql 

if [ $? != 0 ]; then
    exit 1
fi

sleep 5
echo "MySQL loaded, loading Wordpress"

docker stop ${PREFIX}-wordpress
docker rm ${PREFIX}-wordpress
docker run --name wordpress -itd -p 8888:80 --link ${PREFIX}-mysql:mysql -v `pwd`/themes:/var/www/html/wp-content/themes -v `pwd`/uploads:/var/www/html/wp-content/uploads -e WORDPRESS_DEBUG=true ${PREFIX}-wordpress
