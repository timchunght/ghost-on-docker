FROM centos:centos6
# Enable EPEL for Node.js
RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
# Install Node.js and npm
RUN yum install -y npm -v '1.3.6'

COPY . /src
WORKDIR /src
RUN npm install