docker stop cat-server
docker rm cat-server

CAT_ADMIN_PWD="123456aA"

docker run -d --name cat-server \
  -e JAVA_OPTS="-server -Xmx512m -Xms128m" \
  -e CAT_ADMIN_PWD=$CAT_ADMIN_PWD  \
  -p 2281:2281 -p 2280:2280  \
  --privileged=true \
  --restart=always \
  --cap-add=SYS_PTRACE \
  -v /data/appdatas:/data/appdatas \
  -v /data/applogs:/data/applogs  \
  cat:3.0.0
