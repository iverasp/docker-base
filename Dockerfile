FROM centos:centos7

RUN yum update -y && \
  rm -f /etc/localtime && \
  ln -s /usr/share/zoneinfo/Europe/Oslo /etc/localtime

