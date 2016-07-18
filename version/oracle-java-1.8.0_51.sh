#!/bin/bash -e

echo "================ Installing oracle-java8-minor-release ================="
echo oracle-java8-minor-release shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
mkdir -p /opt/jdk
cd /opt
wget --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u51-b16/jdk-8u51-linux-x64.tar.gz
tar -zxf jdk-8u51-linux-x64.tar.gz -C /opt/jdk


# update-alternatives --install /usr/bin/java java /opt/jdk/jdk1.8.0_51/bin/java 100
# update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk1.8.0_51/bin/javac 100
# update-alternatives --install /usr/bin/javaws javaws /opt/jdk/jdk1.8.0_51/bin/javaws 100
