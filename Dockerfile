#Dockerizing MongoDB attempt
#Based on Centos

#FROM centos:latest
FROM centos:6
MAINTAINER Mark Yalenti - MongoDB
ENV PATH $PATH:/opt/mongodb-mms-automation/bin
RUN yum update -y
RUN yum install -y net-tools which ksh net-snmp gcc gcc-devel openssl openssh-server
WORKDIR /opt
RUN curl -OL https://downloads.mongodb.com/on-prem-mms/tar/mongodb-mms-2.0.5.358-1.x86_64.tar.gz
RUN tar xvfz mongodb-mms-2.0.5.358-1.x86_64.tar.gz
