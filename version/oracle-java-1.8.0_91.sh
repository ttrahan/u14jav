#!/bin/bash -e

echo "================ Installing oracle-java8-minor-release ================="
echo oracle-java8-minor-release shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
mkdir -p /usr/lib/jvm/oracle-java-1.8.0_91
cd /usr/lib/jvm
wget --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u91-b14/jdk-8u91-linux-x64.tar.gz
tar -zxf jdk-8u91-linux-x64.tar.gz -C /usr/lib/jvm/oracle-java-1.8.0_91
