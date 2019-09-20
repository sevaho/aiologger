# vim: set ft=dockerfile:

FROM python:3.7-alpine as base

MAINTAINER Sebastiaan Van Hoecke

FROM base as builder

RUN apk --update add

FROM base

ADD app /app

WORKDIR /app
VOLUME /app

EXPOSE 80 443

CMD ["bash"]
ENTRYPOINT [""]
