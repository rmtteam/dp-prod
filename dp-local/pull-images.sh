#!/bin/bash

echo "Stopping containers"
docker stop $(docker ps -a -q)

echo "Removing images containers"
sudo docker image prune
sudo docker container prune
docker images -q | xargs docker rmi
docker rmi -f $(docker images -q)
echo "All removed"

docker login
docker-compose up --build --no-start
docker commit dp-nginx deliverypartsru/dp-nginx && docker push deliverypartsru/dp-nginx
docker commit dp-php deliverypartsru/dp-php && docker push deliverypartsru/dp-php
docker commit dp-worker deliverypartsru/dp-worker && docker push deliverypartsru/dp-worker
docker commit dp-worker deliverypartsru/dp-workspace && docker push deliverypartsru/dp-workspace
docker commit dp-traefik deliverypartsru/dp-traefik && docker push deliverypartsru/dp-traefik
echo "Images has been pushed on hub"
