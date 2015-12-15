FROM ubuntu:wily

RUN apt-get update -y &&\
    apt-get install -y openjdk-8-jdk openjfx


