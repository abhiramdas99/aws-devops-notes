#!/bin/bash
sudo apt update -y
apt install openjdk-17-jdk openjdk-17-jre -y
export $JAVA_HOME=/usr/lib/jvm/java-1.17.0-openjdk-amd64
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.74/bin/apache-tomcat-9.0.74.tar.gz -P tmp/
tar -xf tmp/apache-tomcat-9.0.74.tar.gz 
mv tmp/apache-tomcat-9.0.74 /opt/tomcat/
rm -r tmp
sudo chown -R ubuntu: /opt/tomcat/
sudo sh -c 'chmod +x /opt/tomcat/bin/*.sh'
cd  /opt/tomcat/bin
./catalina.sh start


