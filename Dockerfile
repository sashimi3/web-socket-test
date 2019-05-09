FROM node:alpine

LABEL maintainer="ksdn117@gmail.com"

ADD run.sh /run.sh
CMD ["/run.sh"]

EXPOSE 8010
