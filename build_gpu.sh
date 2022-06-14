#!/bin/bash

docker build --cpuset-cpus 1-3  -t rmitrev/odmgpu -f ./gpu.Dockerfile . && \
cd /home/rum/ODM/www && docker build --cpuset-cpus 1-3 -t rmitrev/nodeodmgpu:efs -f ./Dockerfile.gpu . && \ 
docker push rmitrev/nodeodmgpu:efs
