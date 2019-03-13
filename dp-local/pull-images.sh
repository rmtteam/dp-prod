#!/bin/bash

docker login \
#&& docker-compose build \
docker commit dp-nginx deliverypartsru/dp-nginx && docker push deliverypartsru/dp-nginx
docker commit dp-php deliverypartsru/dp-php && docker push deliverypartsru/dp-php
docker commit dp-worker deliverypartsru/dp-worker && docker push deliverypartsru/dp-worker
docker commit dp-traefik deliverypartsru/dp-traefik && docker push deliverypartsru/dp-traefik
echo "Images has been pushed on hub"
