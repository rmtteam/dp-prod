FROM php:7.2-fpm
FROM php:7.2-cli-stretch

LABEL name="DP Worker" \
    vendor="delivery-parts.ru" \
    version="1.0"

RUN export DEBIAN_FRONTEND=noninteractive \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        supervisor \
        htop \
        mc \
    && apt-get clean

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]

#PHP
EXPOSE 9000

#Supervisor Web UI
EXPOSE 9001