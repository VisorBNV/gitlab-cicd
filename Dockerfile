FROM docker:stable

RUN apk add --no-cache openssh py-pip && \
  pip install --upgrade pip && \
  pip install docker-compose && \
  rm -rf /var/cache/apk/*

CMD ["docker-compose","--version"]