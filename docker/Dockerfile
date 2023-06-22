FROM tomcat:8.5.78-jdk8

MAINTAINER admin "admin@gmail.com"

ENV TZ="Asia/Shanghai" \
    JAVA_OPTS='-Xmx1024m -Xms1024m -Xmn512m' \
    MYSQL_URL='192.168.124.131' \
    MYSQL_PORT='3306' \
    MYSQL_USERNAME='cat' \
    MYSQL_PASSWD='123456aA#' \
    MYSQL_SCHEMA='cat' \
    SERVER_URL='127.0.0.1'

COPY cat-home/target/cat-home.war /usr/local/tomcat/webapps/cat.war
COPY docker/tomcat-server.xml /usr/local/tomcat/conf/server.xml
COPY docker/datasources.xml /data/appdatas/cat/datasources.xml
COPY docker/client.xml /data/appdatas/cat/client.xml
COPY docker/server.xml /data/appdatas/cat/server.xml
COPY docker/datasources.sh datasources.sh
COPY docker/client.sh client.sh

RUN chmod +x datasources.sh && chmod +x client.sh

CMD ["/bin/sh", "-c", "./datasources.sh && ./client.sh && catalina.sh run"]