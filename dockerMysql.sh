#!/bin/bash


echo "Downloading the MySQL image"
echo "................................."
docker pull mysql

clear

echo"Downloading the mysql:5.7 image"
echo "................................."
docker pull mysql:5.7

clear

echo "What is the name of the docker image?"
read imageDocker

echo "What is the password ?"
read passwordDocker

docker run --name $imageDocker -e MYSQL_ROOT_PASSWORD=$passwordDocker -p 3306:3306 -d mysql:5.7