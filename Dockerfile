FROM savonet/liquidsoap:v2.4.5

USER root

COPY stream.liq /usr/src/app/
COPY config_docker.liq /usr/src/app/config.liq

WORKDIR /usr/src/app

CMD ["/usr/src/app/stream.liq"]
