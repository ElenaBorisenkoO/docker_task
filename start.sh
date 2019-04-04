#!/bin/bash
git pull
#docker stop docker-app
#docker rm docker-app
#docker rmi docker-static
docker build -t docker-static .
#docker run --name docker-app -p 3000:90 docker-static
docker run -p 3000:90 docker-static

