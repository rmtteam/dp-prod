# dp-prod

pull-images.sh - скрипт сборки images и публикации их в docker hub

После git pull на хостовой тачке надо сделать

<code>sudo chown root:root data/etc/traefik/acme.json && sudo chmod 600 data/etc/traefik/acme.json</code>