FROM docker:stable

RUN apk update && apk add openssh py-pip
RUN pip install --upgrade pip && pip install docker-compose

CMD ["docker-compose","--version"]