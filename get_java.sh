#!/bin/bash

docker rm openjfx
docker run --name openjfx openjfx bash -c "cd /usr/lib/jvm/java-8-openjdk-amd64 && tar cvfz /java.tar.gz ."

[ ! -d openjdk-8 ] && mkdir openjdk-8
docker cp openjfx:/java.tar.gz openjdk-8/java.tar.gz
cd openjdk-8
tar xvf java.tar.gz
rm java.tar.gz
rm -r -f docs
cd ..

tar -cvzf openjdk-8.tar.gz openjdk-8
