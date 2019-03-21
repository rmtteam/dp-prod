FROM nginx:1.15.8

LABEL name="DP Nginx" \
    vendor="delivery-parts.ru"

RUN export DEBIAN_FRONTEND=noninteractive \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        git \
        nano \
        ca-certificates \
    && apt-get clean

EXPOSE 9000
