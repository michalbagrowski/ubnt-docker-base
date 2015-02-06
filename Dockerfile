FROM ubuntu:12.04

RUN apt-get update
RUN apt-get install -y curl
RUN curl https://packagecloud.io/gpg.key | apt-key add -
RUN apt-get install -y apt-transport-https

RUN echo 'deb https://packagecloud.io/basho/riak/ubuntu/ precise main' > /etc/apt/sources.list
RUN echo 'deb-src https://packagecloud.io/basho/riak/ubuntu/ precise main' > /etc/apt/sources.list
RUN apt-get update
RUN apt-cache search riak 
RUN apt-get install riak
