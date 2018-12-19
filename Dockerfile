FROM alpine:3.8
#docker:stable

RUN apk add --no-cache openssh docker py-pip curl git && \
  pip install --upgrade pip && \
  pip install docker-compose && \
  rm -rf /var/cache/apk/*

CMD ["docker-compose","--version"]