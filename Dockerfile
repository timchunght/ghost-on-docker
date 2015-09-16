FROM centos:centos6
RUN yum install gcc gcc-c++ automake autoconf libtoolize make wget tar -y
# Install Node.js and npm
RUN cd /opt && wget http://nodejs.org/dist/v0.10.15/node-v0.10.15.tar.gz && tar zxvf node-v0.10.15.tar.gz && cd node-v0.10.15 && ./configure && make
RUN make install
COPY . /src
WORKDIR /src
RUN npm install
