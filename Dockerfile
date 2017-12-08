FROM centos
RUN yum update -y
RUN yum install wget -y

RUN wget http://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz

RUN tar -xvzf apache-tomcat-8.5.24.tar.gz

COPY spring-music.war apache-tomcat-8.5.24/webapps/

RUN sh apache-tomcat-8.5.24/bin/start.sh

