FROM ubuntu:16.04

MAINTAINER Pavlin

RUN apt-get update && apt-get install -y nginx \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && echo "daemon off;" >> /etc/nginx/nginx.conf 

RUN rm -rf /var/www/html/*

ADD index.html /var/www/html

EXPOSE 80
CMD ["nginx"]
