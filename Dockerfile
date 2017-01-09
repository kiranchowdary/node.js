FROM ubuntu:15.04
MAINTAINER anuwardeen

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y  software-properties-common && \
    add-apt-repository ppa:webupd8team/npm -y && \
    apt-get install -y npm && \
    apt-get clean


RUN mkdir -p /opt/app
WORKDIR /opt/app
ADD node_modules/express /opt/app

EXPOSE 8080

CMD ["node", "/dist/."]
