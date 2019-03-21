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
docker commit dp-nginx deliverypartsru/dp-nginx:1.3.22.1 && docker push deliverypartsru/dp-nginx:1.3.22.1
docker commit dp-php deliverypartsru/dp-php:1.3.22.1 && docker push deliverypartsru/dp-php:1.3.22.1
docker commit dp-worker deliverypartsru/dp-worker:1.3.22.1 && docker push deliverypartsru/dp-worker:1.3.22.1
docker commit dp-traefik deliverypartsru/dp-traefik:1.3.22.1 && docker push deliverypartsru/dp-traefik:1.3.22.1
echo "Images has been pushed on hub"
