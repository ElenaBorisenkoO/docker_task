#!/bin/bash

# this is old start  operations
# do not run docker from script, this will affect build

#git pull
#docker stop docker-app
#docker rm docker-app
#docker rmi docker-static
#docker build -t docker-static .
#docker run --name docker-app -p 3000:90 docker-static
#docker run -p 3000:90 docker-static


# new app startup script operations for nginx installed on server
# without docker, etc

#this command used to remove old content in default ngix webapp directory
#this will empty old content
rm -r /var/www/html/*

#using this command we copy our html data from **build** direcory (copy new build)
#to nginx working directory, so this is our new html data
cp src/** /var/www/html

#in addition we change permissions to allow nginx access this files 

sudo chmod -R 755 /var/www/html


