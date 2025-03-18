#!/bin/bash
cd /etc/yum.repos.d/ && \
sed -i 's/mirrorlist/#mirrorlist/g' CentOS-* && \
sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' CentOS-* && \
yum clean all && yum makecache && yum update -y
