FROM ubuntu:18:04
# COPY sources.list /etc/apt/sources.list
RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install nginx &&\
    apt-get -y install nodejs &&\
    apt-get -y install npm &&\
    apt-get -y install git && \
    npm install -g hexo  && \
    npm install -g hexo-cli && \
    mkdir ~/hexo_server && \
    cd ~/hexo_server/ && \
    hexo init && \
    npm install hexo-renderer-jade@0.3.0 --save && \
    npm install hexo-renderer-stylus --save && \
    npm install hexo-generator-json-content@2.2.0 --save && \
    npm install hexo-filter-flowchart --save