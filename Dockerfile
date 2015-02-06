FROM ubuntu:12.04

RUN apt-get update
RUN apt-get intall curl
RUN curl https://packagecloud.io/gpg.key | sudo apt-key add -
RUN apt-get install -y apt-transport-https

RUN echo 'deb https://packagecloud.io/basho/riak/ubuntu/ precise main' > /etc/apt/sources.list
RUN echo 'deb-src https://packagecloud.io/basho/riak/ubuntu/ precise main' > /etc/apt/sources.list
RUN apt-get update
RUN apt-get install riak
