#!/bin/bash

#docker build --cpuset-cpus 1-3 -t rmitrev/odm -f ./Dockerfile . && \
docker build -t rmitrev/odm -f ./Dockerfile . && \
cd /home/rum/ODM/www && docker build --cpuset-cpus 1-3 -t rmitrev/nodeodm_efs -f ./Dockerfile . && \
docker push rmitrev/nodeodm_efs 
