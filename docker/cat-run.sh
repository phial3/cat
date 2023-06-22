#!/bin/bash

docker stop cat-server
docker rm cat-server

CAT_ADMIN_PWD="123456aA"

## --restart=always
docker run --name cat-server \
  -e JAVA_OPTS="-server -Xmx512m -Xms128m" \
  -e CAT_ADMIN_PWD=$CAT_ADMIN_PWD  \
  -e CAT_HOME=/data/appdatas/cat \
  -p 2281:2281 -p 2280:2280  \
  --privileged=true \
  --cap-add=SYS_PTRACE \
  -v ./docker/cat:/data/appdatas/cat \
  -v ./docker/logs:/data/applogs/cat \
  cat:4.0-RC1
