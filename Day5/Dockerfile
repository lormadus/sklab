FROM ubuntu:18.04
MAINTAINER Demo example@demo.com
# Avoiding user interaction
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update y
RUN apt-get install y apache2 
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
