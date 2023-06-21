#!/bin/bash

#开始构建镜像
echo "build image ..."
docker build -f docker/Dockerfile -t cat:3.0.0 .