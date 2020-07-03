#Download base image ubuntu 16.04
FROM ubuntu:latest
MAINTAINER Wisdmlabs (hardik.raut@wisdmlabs.com)
ARG DEBIAN_FRONTEND=noninteractive

# Update Ubuntu Software repository
RUN apt-get update -y
RUN apt-get upgrade -y

#Install composer if not exist
RUN apt-get install curl php-cgi php php-dev php-xml git zip -y
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
