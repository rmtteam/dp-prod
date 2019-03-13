# dp-prod

pull-images.sh - скрипт сборки images и публикации их в docker hub

После git pull на хостовой тачке надо сделать

<code>docker commit dp-nginx deliverypartsru/dp-nginx && docker push deliverypartsru/dp-nginx</code>

Иначе не взлетит, но это не точно.
