#!/bin/bash

VER=8.0.66

docker rm openjfx
docker run --name openjfx openjfx bash -c "cd /usr/lib/jvm/java-8-openjdk-amd64 && tar cvfz /java.tar.gz ."

[ ! -d java8 ] && mkdir java8
docker cp openjfx:/java.tar.gz openjdk-8/java.tar.gz
cd java8
tar xvf java.tar.gz
rm java.tar.gz
rm -r -f docs
cd ..

tar -cvzf java8_${VER}.tar.gz java8
