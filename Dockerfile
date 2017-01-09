FROM ubuntu:15.04
MAINTAINER anuwardeen

FROM nginx:latest
COPY build /usr/share/nginx/html/.
