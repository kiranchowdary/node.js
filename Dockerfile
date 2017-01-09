FROM ubuntu:15.04
MAINTAINER anuwardeen

FROM nginx
COPY . /usr/share/nginx/html/
