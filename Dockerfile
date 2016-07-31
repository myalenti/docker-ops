#Dockerizing MongoDB Ops Manager attempt
#Requires a mongod container to interact with
#Based on Centos

#FROM centos:latest
FROM centos:6
ENV MDBHOST=localhost
ENV MDBPORT=27017
MAINTAINER Mark Yalenti - MongoDB
RUN yum update -y
RUN yum install -y net-tools which ksh net-snmp gcc gcc-devel openssl openssh-server
WORKDIR /opt
RUN curl -OL https://downloads.mongodb.com/on-prem-mms/tar/mongodb-mms-2.0.5.358-1.x86_64.tar.gz
RUN tar xvfz mongodb-mms-2.0.5.358-1.x86_64.tar.gz
RUN curl -OL http://downloads.10gen.com/linux/mongodb-linux-x86_64-enterprise-rhel62-3.2.8.tgz
RUN tar xvfz mongodb-linux-x86_64-enterprise-rhel62-3.2.8.tgz
EXPOSE 8080 8443
ENTRYPOINT [ "/opt/mongodb-mms-2.0.5.358-1.x86_64/bin/mongodb-mms", "start" ]
