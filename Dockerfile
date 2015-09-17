#FROM centos:centos6
#RUN yum install gcc gcc-c++ automake autoconf libtoolize make wget tar -y
#RUN wget http://nodejs.org/dist/v0.10.30/node-v0.10.30-linux-x64.tar.gz
#RUN tar --strip-components 1 -xzvf node-v* -C /usr/local
FROM ubuntu:14.04
RUN apt-get update && apt-get install tar wget -y
RUN cd tmp/ && wget http://nodejs.org/dist/v0.10.30/node-v0.10.30-linux-x64.tar.gz && tar --strip-components 1 -xzvf node-v* -C /usr/local && rm node-v*
ADD . /src
WORKDIR /src
RUN npm install -g grunt-cli
RUN npm install
#RUN grunt init && grunt prod
