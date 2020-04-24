FROM ubuntu:18.04
# COPY sources.list /etc/apt/sources.list
RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install nginx &&\
    apt-get -y install git && \
    git clone https://github.com/golang/go.git