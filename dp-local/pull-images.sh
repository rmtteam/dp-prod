#!/bin/bash

docker login
docker-compose build
docker commit dp-nginx deliverypartsru/dp-nginx:1.3.20 && docker push deliverypartsru/dp-nginx:1.3.20
docker commit dp-php deliverypartsru/dp-php:1.3.20 && docker push deliverypartsru/dp-php:1.3.20
docker commit dp-worker deliverypartsru/dp-worker:1.3.20 && docker push deliverypartsru/dp-worker:1.3.20
docker commit dp-traefik deliverypartsru/dp-traefik:1.3.20 && docker push deliverypartsru/dp-traefik:1.3.20
echo "Images has been pushed on hub"
