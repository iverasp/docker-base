FROM debian:wheezy

ENV DEBIAN_FRONTEND noninteractive

# apt-utils seems missing and warnings are shown, so we install it
RUN apt-get update -q -q && \
 apt-get install apt-utils --yes --force-yes && \
 echo 'Europe/Oslo' > /etc/timezone && \
 dpkg-reconfigure tzdata && \
 apt-get upgrade --yes --force-yes
