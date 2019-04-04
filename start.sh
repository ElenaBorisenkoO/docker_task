#!/bin/bash
git pull

docker build -t docker-static .

docker run -p 3000:90 docker-static

