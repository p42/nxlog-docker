FROM project42/s6-centos:centos7
MAINTAINER Brandon Cone bcone@esu10.org

RUN yum -y install openssl perl apr libdbi \
    && rpm -ivh https://nxlog.co/system/files/products/files/348/nxlog-ce-2.9.1716-1_rhel7.x86_64.rpm

COPY container-files /