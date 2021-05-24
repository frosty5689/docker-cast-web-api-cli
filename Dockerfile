FROM node:8-alpine

LABEL maintainer frosty5689 <frosty5689@gmail.com>

RUN apk add --no-cache --update \
    ca-certificates \
    tzdata \
  && update-ca-certificates \
  && rm -rf /root/.cache

RUN mkdir -p /opt/cast-web-api-cli && \
    cd /opt/cast-web-api-cli && \
    npm install cast-web-api-cli

ADD run/* /opt/cast-web-api-cli/

WORKDIR /opt/cast-web-api-cli/

ENV HOSTNAME=127.0.0.1
ENV PORT=3000

EXPOSE $PORT/tcp

CMD ["/opt/cast-web-api-cli/start.sh"]

