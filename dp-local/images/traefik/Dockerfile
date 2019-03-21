FROM traefik:1.7.9

LABEL name="DP Traefik" \
    vendor="delivery-parts.ru"


    RUN export DEBIAN_FRONTEND=noninteractive \
        && apt-get update \
        && apt-get install -y --no-install-recommends \
            git \
            nano \
            ca-certificates \
        && apt-get clean
